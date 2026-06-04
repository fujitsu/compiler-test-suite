#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
signed int v5 (signed int, signed int, signed char);
signed int (*v6) (signed int, signed int, signed char) = v5;
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
signed int v9 (unsigned short);
signed int (*v10) (unsigned short) = v9;
extern unsigned int v11 (signed char, signed char, unsigned short, signed char);
extern unsigned int (*v12) (signed char, signed char, unsigned short, signed char);
extern signed char v13 (unsigned int, unsigned char, signed char);
extern signed char (*v14) (unsigned int, unsigned char, signed char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
unsigned char v21 (signed int, unsigned short, signed char);
unsigned char (*v22) (signed int, unsigned short, signed char) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
unsigned short v32 = 3;
unsigned short v31 = 2;

unsigned char v21 (signed int v34, unsigned short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -1;
signed short v38 = 2;
signed char v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 2;
signed short v42 = 0;
signed int v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v44, signed int v45, signed char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -2;
unsigned char v48 = 4;
unsigned char v47 = 5;
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
