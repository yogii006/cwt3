#include <stdio.h>

__global__ void helloCUDA()
{
    printf("Hello CUDA from GPU!\n");
}

int main()
{
    helloCUDA<<<1, 1>>>();
    cudaDeviceSynchronize();
    printf("cuda checking centre");
    return 0;
}
