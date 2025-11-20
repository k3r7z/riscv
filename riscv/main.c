#include <stdio.h>

extern bool _is_even(int n);
extern int _count_bits(int n);

void test_is_even() {
    int n;
    while(true) {
	printf("Enter number (0 to exit): ");
	scanf("%d", &n);
	if(n == 0) break;
	bool result = is_even(n);
	if(result)
	    printf("The number is even\n\n");
	else
	    printf("The number is odd\n\n");
    }
}


void test_count_bits() {
    int n;
    while(true) {
	printf("Enter number (0 to exit): ");
	scanf("%d", &n);
	if(n == 0) break;
	int bits = _count_bits(n);
	printf("%d has %d bits\n\n", n, bits);
    }    
}


int main(void){
    //test_is_even();
    test_count_bits();
    return 0;
}
