#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, unsigned char, signed int);
extern signed int (*v2) (unsigned int, unsigned short, unsigned char, signed int);
extern signed int v3 (signed char, signed char, signed int, unsigned char);
extern signed int (*v4) (signed char, signed char, signed int, unsigned char);
void v5 (void);
void (*v6) (void) = v5;
extern void v7 (unsigned int, unsigned short, unsigned int);
extern void (*v8) (unsigned int, unsigned short, unsigned int);
extern signed int v9 (unsigned short, unsigned short, unsigned char, signed char);
extern signed int (*v10) (unsigned short, unsigned short, unsigned char, signed char);
void v11 (unsigned short, unsigned short);
void (*v12) (unsigned short, unsigned short) = v11;
signed short v15 (unsigned int, signed int);
signed short (*v16) (unsigned int, signed int) = v15;
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (unsigned int, unsigned short, signed short, unsigned char);
extern void (*v24) (unsigned int, unsigned short, signed short, unsigned char);
unsigned short v25 (signed short, unsigned int, signed int, unsigned int);
unsigned short (*v26) (signed short, unsigned int, signed int, unsigned int) = v25;
extern signed char v27 (unsigned char, unsigned int);
extern signed char (*v28) (unsigned char, unsigned int);
extern signed short v29 (signed char, unsigned int, unsigned int);
extern signed short (*v30) (signed char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned short v32 = 2;
signed int v31 = 1;

unsigned short v25 (signed short v34, unsigned int v35, signed int v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 1;
signed char v39 = 1;
signed int v38 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -4;
unsigned short v44 = 5;
signed int v43 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned short v46, unsigned short v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -4;
signed char v49 = 2;
signed char v48 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed short v53 = 0;
unsigned char v52 = 4;
signed short v51 = -3;
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
unsigned int v56;
unsigned short v57;
unsigned char v58;
signed int v59;
signed int v60;
v56 = 2U + 2U;
v57 = v32 + v33;
v58 = 7 + 2;
v59 = 3 + -2;
v60 = v1 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
