#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, signed short, unsigned char);
extern signed short (*v2) (signed short, signed short, unsigned char);
extern unsigned short v3 (signed int, signed int);
extern unsigned short (*v4) (signed int, signed int);
extern unsigned short v5 (unsigned int, signed int, unsigned char);
extern unsigned short (*v6) (unsigned int, signed int, unsigned char);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
void v15 (void);
void (*v16) (void) = v15;
extern signed int v17 (unsigned int, unsigned short, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int);
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned short v21 (signed int, signed char, signed int);
unsigned short (*v22) (signed int, signed char, signed int) = v21;
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern signed short v25 (signed char, unsigned short, unsigned char);
extern signed short (*v26) (signed char, unsigned short, unsigned char);
extern void v27 (signed int, signed short, signed short);
extern void (*v28) (signed int, signed short, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned char v32 = 5;
unsigned int v31 = 5U;

unsigned short v21 (signed int v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 5;
unsigned int v38 = 0U;
signed int v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed char v42 = 1;
signed char v41 = 3;
signed char v40 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
signed int v45 = -2;
signed int v44 = 3;
signed char v43 = 3;
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
signed short v48;
signed short v49;
unsigned char v50;
signed short v51;
v48 = -4 + v33;
v49 = v33 - v33;
v50 = v32 - 0;
v51 = v1 (v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
