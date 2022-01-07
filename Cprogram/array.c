#include<stdio.h>
void main()
{
	int i,j,k,w,x,n,arr[n],arr1[(n+1)/2],arr2[n-(n+1)/2];
	int value;	
	scanf("%d",&n);
	for(i=0;i<n;i++)
	{
		scanf("%d",&arr[i]);
	}
	printf("before sorting\n");
	for(i=0;i<n;i++)
		printf("%d ",arr[i]);
	printf("\n");
	w=(n+1)/2;
	x=n-(n+1)/2;

	for(k=0;k<w-1;k++)

	{
		for(j=0;j<w-1-k;j++)
		{
			if(arr[j]>arr[j+1])
			{
				value=arr[j];
				arr[j]=arr[j+1];
				arr[j+1]=value;
			}
		}


	}
	for(k=0;k<n-w-1;k++)
	{
		for(j=0;j<n-1-k-w;j++)
		{
			if(arr[j+w]<arr[j+w+1])
			{
				value=arr[j+w];
				arr[j+w]=arr[j+w+1];
				arr[j+1+w]=value;
			}
		}
	}
	printf("after sorting\n");
	for(i=0;i<n;i++)
		printf("%d ",arr[i]);
}
