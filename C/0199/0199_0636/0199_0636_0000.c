#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, signed char);
extern unsigned char (*v2) (signed short, unsigned char, signed char);
extern signed short v3 (unsigned int);
extern signed short (*v4) (unsigned int);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
extern signed char v9 (unsigned char, unsigned short);
extern signed char (*v10) (unsigned char, unsigned short);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (signed char, signed int, unsigned int);
extern signed char (*v14) (signed char, signed int, unsigned int);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern signed short v17 (unsigned short, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char);
extern unsigned int v19 (signed char, signed short, signed int, signed int);
extern unsigned int (*v20) (signed char, signed short, signed int, signed int);
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed short v27 (unsigned char);
extern signed short (*v28) (unsigned char);
signed int v29 (unsigned char, signed int, signed char);
signed int (*v30) (unsigned char, signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned int v32 = 5U;
unsigned char v31 = 0;

signed int v29 (unsigned char v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -2;
signed int v38 = 0;
unsigned int v37 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
unsigned int v42 = 4U;
signed char v41 = -4;
signed int v40 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed char v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -2;
unsigned int v45 = 0U;
unsigned short v44 = 5;
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
signed short v49;
unsigned char v50;
signed char v51;
unsigned char v52;
v49 = v33 - v33;
v50 = v31 - v31;
v51 = 2 + -3;
v52 = v1 (v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
