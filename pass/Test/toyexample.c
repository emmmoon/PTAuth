#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>

int *pg;
int gloab[10];

struct person
{
	char* name;  
	unsigned int age;  
	unsigned long ID;  
};

typedef struct name {
  char *myname;
  void (*func)(char *str);
} NAME;

void set_info(struct person *p, unsigned int age, unsigned long ID) {
	p->age = age; 
	p->ID= ID;
}

void malloc_global(){
	pg = (int*) malloc(sizeof(int));
	pg[0] = 1;
	free(pg);
}

void test_global(){
	malloc_global();
	int xg = pg[0];
	printf("The globalvariant is %d.\n", xg);
}

void test_global1(){
	pg = &gloab;
	int xg = pg[0];
	printf("The globalvariant is %d.\n", xg);
}

void just_return(int *p){
	return;
}

void print_person(struct person *p){
	printf("Person ID is = %ld \n", p->ID);
	printf("Person age is = %d \n", p->age);
	free(p);
}

void use_after_free1(){
	struct person *p = (struct person*) malloc(sizeof(struct person));

	set_info(p, 25,50);
	print_person(p);

	printf("Dereferencing p dangling pointer. PTAuth should terminate the program at this point.\n");
	int ID = p->ID; // Use-After-Free -- That is discovered by PTAuth. 哦这里只读
}

void use_after_free2(){
	char *buf1;
    char *buf2;
 
    buf1 = (char *)malloc(32);
    free(buf1);
 
    // 分配 buf2 去“占坑”buf1 的内存位置
    buf2 = (char *) malloc(32);
 
    // 对buf2进行内存清零
    memset(buf2, 0, 32);
 
    // 重引用已释放的buf1指针，但却导致buf2值被篡改
    printf("==== Use After Free ===\n");
    strncpy(buf1, "hack", 5);
    printf("buf2:%s\n\n", buf2);
 
    free(buf2);
	return;
}
void myprint(char *str) { printf("%s\n", str); }
void printmyname() { printf("call print my name\n"); }

void use_after_free3(){
	NAME *a;
	a = (NAME *)malloc(sizeof(struct name));
	a->func = myprint;
	a->myname = "I can also use it";
	a->func("this is my function");
	// free without modify
	free(a);
	a->func("I can also use it");
	// free with modify
	a->func = printmyname;
	a->func("this is my function");
	// set NULL
	a = NULL;
	printf("this pogram will crash...\n");
	a->func("can not be printed...");	
}

void use_after_free4(){
	int **p = (int **)malloc(3 * sizeof(int *));

	p[0] = (int*)malloc(4 * sizeof(int));
	p[1] = (int*)malloc(4 * sizeof(int));
	p[2] = (int*)malloc(4 * sizeof(int));

	memset(p, 0, sizeof(p));
	p[1][1] = 1;
	free(p[1]);

	int ID = p[1][1];
	printf("The ID is %d.\n",ID);

	free(p[0]);
	free(p[2]);
	free(p);

}

void use_after_free5(){
	struct person *p = (struct person*) malloc(sizeof(struct person));
	struct person *p1 = &(*p);

	set_info(p1, 25,50);
	print_person(p1);

	printf("Dereferencing p dangling pointer. PTAuth should terminate the program at this point.\n");
	int ID = p1->ID; // Use-After-Free -- That is discovered by PTAuth. 哦这里只读
}

void use_after_free6(){
	struct person *p = (struct person*) malloc(sizeof(struct person));

	set_info(p, 25,50);
	print_person(p);

	printf("Dereferencing p dangling pointer. PTAuth should terminate the program at this point.\n");
	struct person *q = p;
	int ID = q->ID; // Use-After-Free -- That is discovered by PTAuth. 哦这里只读
}

void use_after_free7(){
	struct person *p = (struct person*) malloc(sizeof(struct person));
	struct person *q = p;

	set_info(p, 25,50);
	print_person(p);

	printf("Dereferencing p dangling pointer. PTAuth should terminate the program at this point.\n");
	int ID = q->ID;
}

void use_after_free8(){
	int *p = (int*) malloc (sizeof(int) * 10);
	p[1] = 1;
	free(p);
	just_return(p + 1);

	return;
}

void use_after_free9(){

	int *ptr = (int *)malloc(10);
	int *qtr = ptr;
	free(ptr);
	ptr = NULL;
	logError("Error", qtr);

}

void doublefree3(){

	int *ptr = (int *)malloc(10);
	int *qtr = ptr;
	free(ptr);
	ptr = NULL;
	free(qtr);

}

void invalidfree(){

	char *ptr = (char*)malloc(10);
	for(;*ptr != '\0';++ptr){
		if(*ptr == SEARCH_CHAR){
			printf("Match!\n");
			break;
		}
	}
	free(ptr);
}

void test_backward(){
	int *p = (int *) malloc(1000 * sizeof(int));
	p[500] = 1;
	just_return(p);
	int x = p[500];

	free(p);
}

void test_stackvariable(){
	int *pp;
	int p = 1;
	pp = &p;
	just_return(pp);
	int x = *pp;

	return;
}

void double_free(){
	struct person *p = (struct person*) malloc(sizeof(struct person));

	set_info(p, 25,50);
	print_person(p);

	printf("Free a freed pointer. PTAuth should terminate the program at this point.\n");
	free(p); // Double-Free -- That is discovered by PTAuth.
}

void double_free2(){
	struct person *p = (struct person*) malloc(sizeof(struct person));

	set_info(p, 25,50);
	print_person(p);

	printf("Free a freed pointer. PTAuth should terminate the program at this point.\n");
	realloc(p, 0);
}

void invalid_free(){
	struct person *p = (struct person*) malloc(sizeof(struct person));

	set_info(p, 25,50);
	p = p + 1;

	printf("Invalid free of a pointer. PTAuth should terminate the program at this point.\n");
	free(p); // Invalid-Free -- That is discovered by PTAuth
}

void print_usage(){
	printf("Usage: ./stest.arm.elf [OPTIONS]\n");
	printf("./stest.arm.elf uaf     Trigger the Use-After-Free bug\n");
	printf("./stest.arm.elf df      Trigger the Double-Free bug\n");
	printf("./stest.arm.elf if      Trigger the Invalid-Free bug\n");
	exit(0);
}

int main (int argc, char *argv[])
{

	if(argc < 2) {
		print_usage();
	}

	if (strcmp (argv[1], "uaf1") == 0) {
		use_after_free1();
	}

	if (strcmp (argv[1], "df") == 0) {
		double_free();
	}

	if (strcmp (argv[1], "df2") == 0) {
		double_free2();
	}

	if (strcmp (argv[1], "if") == 0) {
		invalid_free();
	}

	if (strcmp (argv[1], "uaf2") == 0) {
		use_after_free2();
	}
	
	if (strcmp (argv[1], "uaf3") == 0) {
		use_after_free3();
	}
	
	if (strcmp (argv[1], "uaf4") == 0) {
		use_after_free4();
	}

	if (strcmp (argv[1], "uaf5") == 0) {
		use_after_free5();
	}

	if (strcmp (argv[1], "uaf6") == 0) {
		use_after_free6();
	}

	if (strcmp (argv[1], "uaf7") == 0) {
		use_after_free7();
	}

	if (strcmp (argv[1], "uaf8") == 0) {
		use_after_free8();
	}

	if (strcmp (argv[1], "tb") == 0) {
		test_backward();
	}

	if (strcmp (argv[1], "tgl") == 0) {
		test_global();
	}

	if (strcmp (argv[1], "tgl1") == 0) {
		test_global1();
	}

	if (strcmp (argv[1], "tsv") == 0) {
		test_stackvariable();
	}

	return 0;
}


