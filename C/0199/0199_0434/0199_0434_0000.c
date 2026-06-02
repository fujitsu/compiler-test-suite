#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned short, unsigned short);
extern signed short (*v2) (unsigned char, unsigned short, unsigned short);
unsigned int v3 (signed char, signed short, unsigned int);
unsigned int (*v4) (signed char, signed short, unsigned int) = v3;
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern signed short v7 (unsigned char, signed char, unsigned short, unsigned char);
extern signed short (*v8) (unsigned char, signed char, unsigned short, unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern void v13 (signed char, signed int, signed char);
extern void (*v14) (signed char, signed int, signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned char v17 (unsigned char, signed int, signed char);
unsigned char (*v18) (unsigned char, signed int, signed char) = v17;
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern unsigned char v21 (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned char (*v22) (unsigned char, unsigned int, unsigned int, signed char);
extern signed char v25 (signed int, signed int, unsigned char);
extern signed char (*v26) (signed int, signed int, unsigned char);
extern unsigned char v27 (unsigned char, signed char, signed char, unsigned int);
extern unsigned char (*v28) (unsigned char, signed char, signed char, unsigned int);
extern signed char v29 (unsigned char, signed short, signed short, unsigned char);
extern signed char (*v30) (unsigned char, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 6U;
unsigned short v31 = 3;

unsigned char v17 (unsigned char v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -1;
unsigned int v38 = 0U;
unsigned int v37 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
signed char v42 = 0;
signed int v41 = -3;
signed char v40 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v43, signed short v44, unsigned int v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 4;
unsigned short v47 = 5;
unsigned char v46 = 3;
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
unsigned char v51;
unsigned short v52;
unsigned short v53;
signed short v54;
v51 = 0 - 5;
v52 = v31 + v31;
v53 = v31 - 0;
v54 = v1 (v51, v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
