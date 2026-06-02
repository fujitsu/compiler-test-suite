#include <stdio.h>
extern unsigned short v1 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned short, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned short v5 (signed char, unsigned int, signed char);
extern unsigned short (*v6) (signed char, unsigned int, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (unsigned int, signed char, unsigned char, signed char);
extern unsigned short (*v10) (unsigned int, signed char, unsigned char, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (unsigned int, signed int);
extern signed int (*v14) (unsigned int, signed int);
extern signed short v15 (unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (unsigned char, unsigned short, signed short);
extern void (*v20) (unsigned char, unsigned short, signed short);
extern unsigned int v23 (unsigned int, signed int);
extern unsigned int (*v24) (unsigned int, signed int);
extern void v25 (signed short, unsigned int, signed short, unsigned short);
extern void (*v26) (signed short, unsigned int, signed short, unsigned short);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed int v32 = 0;
unsigned int v31 = 4U;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v36;
unsigned short v37;
unsigned int v38;
unsigned short v39;
v36 = 4 + 0;
v37 = 7 - 1;
v38 = v31 + v31;
v39 = v1 (v36, v37, v38);
history[history_index++] = (int)v39;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
