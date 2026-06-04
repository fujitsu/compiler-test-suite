#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed short, signed char, unsigned char);
extern unsigned char (*v2) (unsigned short, signed short, signed char, unsigned char);
unsigned char v3 (unsigned char);
unsigned char (*v4) (unsigned char) = v3;
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern unsigned int v7 (signed int, signed short, unsigned short, signed char);
extern unsigned int (*v8) (signed int, signed short, unsigned short, signed char);
extern void v9 (signed short, signed short);
extern void (*v10) (signed short, signed short);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern unsigned int v13 (signed short, unsigned char, signed int);
extern unsigned int (*v14) (signed short, unsigned char, signed int);
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern signed short v17 (signed short, unsigned int, unsigned int);
extern signed short (*v18) (signed short, unsigned int, unsigned int);
extern signed int v19 (unsigned int, signed short, unsigned char, signed short);
extern signed int (*v20) (unsigned int, signed short, unsigned char, signed short);
extern signed short v23 (signed short, unsigned char, signed short);
extern signed short (*v24) (signed short, unsigned char, signed short);
signed short v25 (unsigned char, signed short);
signed short (*v26) (unsigned char, signed short) = v25;
extern unsigned short v27 (signed int, unsigned char, unsigned char, signed char);
extern unsigned short (*v28) (signed int, unsigned char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed int v32 = -3;
signed int v31 = 0;

signed short v25 (unsigned char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 7U;
unsigned int v37 = 6U;
unsigned char v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = 2;
signed short v41 = -2;
unsigned int v40 = 6U;
trace++;
switch (trace)
{
case 3: 
return v39;
case 7: 
return v39;
case 11: 
return v39;
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
unsigned short v45;
signed short v46;
signed char v47;
unsigned char v48;
unsigned char v49;
v45 = 4 + 4;
v46 = 2 - v33;
v47 = 1 + -2;
v48 = 3 - 4;
v49 = v1 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
