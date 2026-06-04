#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned int v5 (unsigned short, signed int, signed short);
extern unsigned int (*v6) (unsigned short, signed int, signed short);
extern unsigned int v7 (unsigned char, signed int, signed char);
extern unsigned int (*v8) (unsigned char, signed int, signed char);
extern void v9 (signed int, signed char, signed char, unsigned char);
extern void (*v10) (signed int, signed char, signed char, unsigned char);
extern unsigned char v11 (signed char, signed int, unsigned int);
extern unsigned char (*v12) (signed char, signed int, unsigned int);
extern void v13 (signed char);
extern void (*v14) (signed char);
extern signed short v15 (signed short, signed short, signed int);
extern signed short (*v16) (signed short, signed short, signed int);
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
unsigned short v19 (unsigned char, unsigned char);
unsigned short (*v20) (unsigned char, unsigned char) = v19;
signed char v21 (unsigned short, signed char);
signed char (*v22) (unsigned short, signed char) = v21;
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
unsigned char v32 = 6;
signed char v31 = -4;

signed char v21 (unsigned short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2U;
unsigned short v37 = 2;
signed char v36 = -2;
trace++;
switch (trace)
{
case 4: 
return v35;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v39, unsigned char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -3;
signed char v42 = -3;
unsigned short v41 = 5;
trace++;
switch (trace)
{
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
signed char v46;
unsigned char v47;
v46 = -2 - 1;
v47 = v1 (v46);
history[history_index++] = (int)v47;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
