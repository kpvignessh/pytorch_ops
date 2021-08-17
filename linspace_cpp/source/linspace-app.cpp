#include <torch/torch.h>
#include <iostream>

/*
Equivalent function for pytorch linspace op
Creating a one-dimensional tensor of size steps whose values are 
evenly spaced from start to end,inclusive. 
*/

/* To raise an exception that occurs
For zerodivision occurrence
*/
struct MyException
{
  const char *what_exception() const throw()
  {
    return "Exception occured : Step value is zero";
  }
};

/* Custom ops to compute the linspace function
the interval gap is found using the equation (stop-start)/(step-1)
*/

template <typename T>
torch::Tensor compute_linspace(T start, T end, T steps)
{
  try
  {

    torch::Tensor a = torch::sub(torch::tensor(end), torch::tensor(start));
    torch::Tensor b = torch::sub(torch::tensor(steps), torch::tensor(1));
    torch::Tensor c = torch::div(a, b); 
    std::cout <<  "coeff: " << c;

    /*If steps is 1 print only the start element*/
    if (steps == 1)
    {
      torch::Tensor x = torch::tensor(start);
      return x;
    }

    if (steps != 0)
    {
      torch::Tensor x = torch::range((start-start),(steps-1),1);
      x = torch::mul(x,c);
      torch::Tensor out = torch::ones(steps);
      out = torch::mul(out,torch::tensor(start));
      out = torch::add(out,x);
      return out;
    }

    /*If steps is 0 throw an exception message*/
    if (steps == 0)
    {
      throw MyException();
    }
  }

  catch (MyException &e)
  {

    std::cout << e.what_exception() << std::endl;
  }
}

int main()
{

  torch::Tensor int_result1, int_result2, float_result1, float_result2;

  /* Int data type */
  int start[] = {3, 2, -10, -8, 52};
  int i_size = *(&start + 1) - start;
  int end[] = {10, 4, 6, 12, 83};

  /* Float data type*/
  float f_start[] = {-3.5, 3.5,  21.6, -10.2};
  float f_end[] = {10.2, 13.5,  40.2, 5.2};
  int f_size = *(&f_start + 1) - f_start;
  int steps[] = {5, 3, 2, 10, 0};

  int float_count = 0, int_count = 0, total_count;

  try
  {

    for (int i = 0; i < f_size; i++)
    {

      if (steps[i] == 0)
      {

        throw MyException();
      }

      float_result1 = torch::linspace(f_start[i], f_end[i], steps[i]);         //linspace from pytorch
      float_result2 = compute_linspace<float>(f_start[i], f_end[i], steps[i]); //Custom op for linspace

      /* Printing the values to check the output*/
      std::cout << "Float Linspace output" << std::endl;
      std::cout << float_result1 << std::endl;
      std::cout << "Float Custom ops output" << std::endl;
      std::cout << float_result2 << std::endl;

      assert(torch::equal(float_result1, float_result2));
    }

    for (int i = 0; i < i_size; i++)
    {

      if (steps[i] == 0)
      {

        throw MyException();
      }

      int_result1 = torch::linspace(start[i], end[i], steps[i]);       //Built in linspace
      int_result2 = compute_linspace<int>(start[i], end[i], steps[i]); //Custom op for linspace

      /* Printing the values to check the output*/

      std::cout << "Int Linspace output" << std::endl;
      std::cout << int_result1 << std::endl;
      std::cout << "Custom ops output" << std::endl;
      std::cout << int_result2 << std::endl;

      assert(torch::equal(int_result1, int_result2));
    }
  }

  catch (MyException &e)
  {
    std::cout << e.what_exception() << std::endl;
  }

}
    
    
