#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, signed char, unsigned short);
extern unsigned char (*v2) (unsigned short, signed char, signed char, unsigned short);
extern unsigned short v3 (unsigned int);
extern unsigned short (*v4) (unsigned int);
extern void v7 (signed int, signed int);
extern void (*v8) (signed int, signed int);
extern unsigned short v9 (signed short, unsigned char);
extern unsigned short (*v10) (signed short, unsigned char);
void v11 (unsigned char, unsigned short, signed short, signed short);
void (*v12) (unsigned char, unsigned short, signed short, signed short) = v11;
unsigned int v15 (unsigned short, unsigned int, signed short, signed char);
unsigned int (*v16) (unsigned short, unsigned int, signed short, signed char) = v15;
extern unsigned char v17 (signed char, unsigned int, signed short);
extern unsigned char (*v18) (signed char, unsigned int, signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern signed short v23 (signed char, signed short, unsigned char, signed char);
extern signed short (*v24) (signed char, signed short, unsigned char, signed char);
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned short v27 (unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, unsigned short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
unsigned char v32 = 5;
signed int v31 = -3;

void v29 (void)
{
{
for (;;) {
signed char v36 = -1;
signed short v35 = -1;
signed int v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v37, unsigned int v38, signed short v39, signed char v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 0;
unsigned char v42 = 5;
unsigned int v41 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v44, unsigned short v45, signed short v46, signed short v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned char v50 = 2;
unsigned char v49 = 0;
signed short v48 = 1;
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
unsigned short v53;
signed char v54;
signed char v55;
unsigned short v56;
unsigned char v57;
v53 = 2 - 1;
v54 = -3 - 3;
v55 = 2 - -1;
v56 = 7 - 6;
v57 = v1 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
