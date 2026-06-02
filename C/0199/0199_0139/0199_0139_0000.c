#include <stdio.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned char v7 (unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned short, unsigned short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern void v11 (unsigned char, unsigned char, signed char);
extern void (*v12) (unsigned char, unsigned char, signed char);
extern void v13 (unsigned char, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned int, signed char);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (unsigned int, unsigned short, unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int, unsigned int);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned short, unsigned int, unsigned char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned char);
extern signed int v27 (signed short, unsigned int, unsigned int, signed int);
extern signed int (*v28) (signed short, unsigned int, unsigned int, signed int);
extern signed int v29 (signed int, unsigned short, unsigned char);
extern signed int (*v30) (signed int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned short v32 = 5;
unsigned short v31 = 5;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v36;
signed int v37;
v36 = 5U + 7U;
v37 = v1 (v36);
history[history_index++] = (int)v37;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
