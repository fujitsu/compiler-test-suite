#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, unsigned short);
extern signed int (*v2) (signed char, unsigned int, unsigned short);
extern void v3 (signed short, unsigned short, signed short, unsigned int);
extern void (*v4) (signed short, unsigned short, signed short, unsigned int);
extern unsigned short v5 (signed int, signed char, signed int);
extern unsigned short (*v6) (signed int, signed char, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (unsigned short, signed int);
extern unsigned int (*v10) (unsigned short, signed int);
extern void v11 (unsigned char, unsigned char, signed short);
extern void (*v12) (unsigned char, unsigned char, signed short);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (signed char, signed short, unsigned char, unsigned short);
extern unsigned int (*v20) (signed char, signed short, unsigned char, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed int, unsigned int);
extern void (*v24) (signed int, unsigned int);
extern signed char v25 (signed short, signed short, unsigned int, signed char);
extern signed char (*v26) (signed short, signed short, unsigned int, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
void v29 (unsigned int, signed char);
void (*v30) (unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
unsigned char v32 = 5;
unsigned short v31 = 2;

void v29 (unsigned int v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -2;
unsigned int v37 = 7U;
signed char v36 = -3;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v39;
signed int v40;
unsigned int v41;
v39 = 3 + 5;
v40 = 1 - 2;
v41 = v9 (v39, v40);
history[history_index++] = (int)v41;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v44;
unsigned int v45;
unsigned short v46;
signed int v47;
v44 = 1 + 3;
v45 = 0U - 1U;
v46 = 5 + 6;
v47 = v1 (v44, v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
