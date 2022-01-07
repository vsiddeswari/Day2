#include<stdio.h>
#include<stdlib.h>


int main()
{
	int *ptr = (int *)malloc(4*10);

	int i;

	for(i=0;i<10;i++)
	{
		ptr[i] = i*2;
	}

	for(i=0;i<10;i++)
	{
		printf("%d ",ptr[i]);
	}



	printf("\n");

	

	return 0;
}

