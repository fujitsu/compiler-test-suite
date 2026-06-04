#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned char (*v2) (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned int v5 (unsigned short, signed int, signed int);
extern unsigned int (*v6) (unsigned short, signed int, signed int);
extern unsigned short v7 (signed short, signed short, unsigned char);
extern unsigned short (*v8) (signed short, signed short, unsigned char);
extern unsigned char v9 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned char (*v10) (unsigned short, unsigned short, unsigned char, signed int);
unsigned short v11 (unsigned int, unsigned short, signed int);
unsigned short (*v12) (unsigned int, unsigned short, signed int) = v11;
extern signed int v13 (unsigned char, signed short, signed char);
extern signed int (*v14) (unsigned char, signed short, signed char);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern void v19 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v20) (unsigned int, unsigned char, signed short, unsigned int);
extern unsigned short v21 (unsigned int, unsigned char);
extern unsigned short (*v22) (unsigned int, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern void v25 (signed short, unsigned int);
extern void (*v26) (signed short, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed char v32 = 0;
signed short v31 = -2;

signed short v15 (void)
{
{
for (;;) {
unsigned short v36 = 1;
signed char v35 = -1;
signed short v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v37, unsigned short v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 7U;
signed int v41 = 0;
signed char v40 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v43;
v43 = v3 ();
history[history_index++] = (int)v43;
}
break;
case 7: 
{
unsigned short v44;
v44 = v3 ();
history[history_index++] = (int)v44;
}
break;
case 15: 
return v38;
case 19: 
return 4;
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
unsigned char v47;
unsigned int v48;
unsigned char v49;
unsigned short v50;
unsigned char v51;
v47 = 5 - v33;
v48 = 5U + 1U;
v49 = 7 - v33;
v50 = 3 + 3;
v51 = v1 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
