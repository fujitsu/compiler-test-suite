#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, signed short, unsigned char);
extern unsigned short (*v2) (unsigned short, unsigned short, signed short, unsigned char);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern signed int v5 (unsigned char);
extern signed int (*v6) (unsigned char);
extern signed short v7 (signed int, signed int, signed int);
extern signed short (*v8) (signed int, signed int, signed int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed char v11 (signed short, unsigned short, signed int);
extern signed char (*v12) (signed short, unsigned short, signed int);
signed char v13 (unsigned short);
signed char (*v14) (unsigned short) = v13;
signed int v15 (void);
signed int (*v16) (void) = v15;
signed int v17 (void);
signed int (*v18) (void) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (unsigned char, unsigned short, signed int, unsigned int);
extern void (*v24) (unsigned char, unsigned short, signed int, unsigned int);
extern signed short v25 (signed short, signed int);
extern signed short (*v26) (signed short, signed int);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
signed short v32 = -4;
signed int v31 = 2;

signed int v17 (void)
{
{
for (;;) {
signed int v36 = 1;
unsigned int v35 = 0U;
signed short v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
unsigned short v39 = 0;
unsigned int v38 = 2U;
signed short v37 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 0;
signed short v42 = 0;
signed int v41 = 1;
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
unsigned short v46;
unsigned short v47;
signed short v48;
unsigned char v49;
unsigned short v50;
v46 = 5 + 5;
v47 = 7 - 2;
v48 = -1 - v32;
v49 = 2 - 6;
v50 = v1 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
