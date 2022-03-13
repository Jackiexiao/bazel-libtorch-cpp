#include <torch/script.h>
#include <iostream>

int main() {
  std::cout << "======= hello libtorch, print rand tensor ========= " << std::endl;
  torch::Tensor tensor = torch::rand({2, 3});
  std::cout << tensor << std::endl;
}
