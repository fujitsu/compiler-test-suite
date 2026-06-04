#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed short, signed int);
extern unsigned int (*v2) (unsigned int, signed short, signed int);
unsigned int v3 (unsigned char);
unsigned int (*v4) (unsigned char) = v3;
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned int v7 (signed int, unsigned int);
extern unsigned int (*v8) (signed int, unsigned int);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned int v13 (unsigned int, unsigned int, signed int, signed char);
extern unsigned int (*v14) (unsigned int, unsigned int, signed int, signed char);
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
extern signed short v17 (signed short, unsigned int, signed int, signed int);
extern signed short (*v18) (signed short, unsigned int, signed int, signed int);
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
extern void v23 (signed char, signed char, signed int);
extern void (*v24) (signed char, signed char, signed int);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern signed int v27 (unsigned short, unsigned int, signed char, signed char);
extern signed int (*v28) (unsigned short, unsigned int, signed char, signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
unsigned int v32 = 5U;
unsigned short v31 = 1;

signed int v11 (void)
{
{
for (;;) {
signed int v36 = -4;
signed char v35 = -2;
signed int v34 = -1;
trace++;
switch (trace)
{
case 9: 
return v36;
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned int v39 = 7U;
unsigned char v38 = 7;
unsigned int v37 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 1;
unsigned short v42 = 1;
unsigned char v41 = 4;
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
unsigned int v46;
signed short v47;
signed int v48;
unsigned int v49;
v46 = v33 - v33;
v47 = -2 + -2;
v48 = 3 - 3;
v49 = v1 (v46, v47, v48);
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
