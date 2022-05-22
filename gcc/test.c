#include <stdio.h>


int myfunc(int i) {
    return i + 1;
}



int main(int argc, char *argv[])
{


    int number = 2;
    int result = 1;
    int x;


    for (int i=0; i < 10; i++)
    {
        result *= number;
    }


    x = myfunc (15);

    printf ("res = %d\n", result);
    printf ("x = %d\n", x);

    return 0;

}























