#include <torch/torch.h>
#include <iostream>

/*
Equivalent function for pytorch's fmod op
Computes the element-wise remainder of division
*/

/* To raise an exception that occurs
For zero division error
*/
struct MyException
{
    const char *what_exception() const throw()
    {
        return "ZeroDivision error";
    }
};

/* Custom ops to compute the fmod function
fmod_value = ((number - divisor) * (number / divisor) )
*/

template <typename T>
torch::Tensor compute_fmod(torch::Tensor array, T value)
{

    try
    {

        torch::Tensor x = torch::div(array, value);
        x=torch::trunc(x);
        std::cout<<"remainder"<< x << std:: endl;
        x=torch::mul(x,value);
        torch::Tensor z = torch::sub(array, x);
        return z;
    }

    catch (MyException &e)
    {
        std::cout << e.what_exception() << std::endl;
    }
}

int main()
{

    try
    {

        torch::Tensor f_x = torch::tensor({3.6, 4.2, 9.345, 8.61, 12.81, 1.2}); /*Dividend of both positive and negative  float values*/
        torch::Tensor i_x = torch::tensor({-34, -11, -87, -65, -126, -76});     /*Dividend of both positive and negative  int values*/

        torch::Tensor y1 = torch::tensor({2, 3, 4, 5, 6, 8}); /*Divisor of tensor type*/

        /*Computing the builtin fmod function*/

        torch::Tensor o_a1 = torch::fmod(f_x, 23);
        torch::Tensor o_a2 = torch::fmod(i_x, 13);

        /* Printing the values to check Fmod Builtin output*/

        std::cout << "Fmod output" << std::endl;
      
        std::cout << o_a1 << std::endl;
        std::cout << o_a2 << std::endl;

        /*Computing Custom ops for Fmod function*/
        torch::Tensor result1 = compute_fmod<int>(f_x, 23); /*Divisor of int scalar type*/
        torch::Tensor result2 = compute_fmod<int>(i_x, 13);

        /* Printing the values to check the Custom output*/

        std::cout << "custom ops output" << std::endl;
        std::cout << result3 << std::endl;
        std::cout << result6 << std::endl;

        assert(torch::equal(0_a1, result1));
        assert(torch::equal(0_a2, result2));
    }

    catch (MyException &e)
    {
        std::cout << e.what_exception() << std::endl;
    }
}

