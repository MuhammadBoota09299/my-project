#include <stdio.h>
#include <math.h>
#define PI 3.14159
#define Area(r) (PI*r*r)
float r,a;
int main(){
printf("please enter radius\n");
scanf("%f",&r);
printf("Area of square will be= %f",Area(r));
}
