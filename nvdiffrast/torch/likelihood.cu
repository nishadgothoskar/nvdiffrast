inline __device__ int index(const int i, const int j, const int k, int width, int height, int depth) {
     return k * (width * height * 4) + i * (width * 4) + j * 4;
}

__global__ void threedp3_likelihood(float *pos, float time, int width, int height, int depth)
{   
    unsigned int i = blockIdx.x;
    unsigned int j = blockIdx.y;
    unsigned int k = threadIdx.x;

    int idx = index(i,j,k, width, height, depth);

    // write output vertex
    pos[idx] = pos[idx];
}
