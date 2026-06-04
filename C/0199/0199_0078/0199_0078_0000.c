#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned char, signed int, signed short, signed char);
extern unsigned char (*v4) (unsigned char, signed int, signed short, signed char);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern signed int v13 (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed int (*v14) (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern void v17 (signed short, signed short, signed char);
extern void (*v18) (signed short, signed short, signed char);
signed char v19 (signed short, signed int, signed char);
signed char (*v20) (signed short, signed int, signed char) = v19;
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed short v23 (unsigned short, signed char, signed short);
extern signed short (*v24) (unsigned short, signed char, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (unsigned short, signed char, unsigned short);
extern void (*v28) (unsigned short, signed char, unsigned short);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed short v32 = -1;
unsigned int v31 = 0U;

signed char v19 (signed short v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 2U;
signed int v38 = 3;
unsigned short v37 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed short v42 = -3;
unsigned char v41 = 3;
unsigned short v40 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed short v45 = 2;
unsigned char v44 = 6;
unsigned short v43 = 6;
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
unsigned int v48;
v48 = v1 ();
history[history_index++] = (int)v48;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
