#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
unsigned short v5 (signed char, signed int, signed int);
unsigned short (*v6) (signed char, signed int, signed int) = v5;
void v7 (signed int, unsigned short, signed char);
void (*v8) (signed int, unsigned short, signed char) = v7;
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
signed int v11 (signed short, signed short, signed int);
signed int (*v12) (signed short, signed short, signed int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (signed int, signed int, unsigned short);
extern signed short (*v16) (signed int, signed int, unsigned short);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned short v19 (signed int, signed char, signed char);
extern unsigned short (*v20) (signed int, signed char, signed char);
extern void v21 (signed char, unsigned int, unsigned char, signed int);
extern void (*v22) (signed char, unsigned int, unsigned char, signed int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (unsigned int, unsigned short);
extern unsigned short (*v28) (unsigned int, unsigned short);
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed char v32 = -1;
unsigned int v31 = 0U;

signed int v11 (signed short v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 2U;
signed int v38 = 3;
unsigned int v37 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v40, unsigned short v41, signed char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 5;
unsigned int v44 = 7U;
signed short v43 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v46, signed int v47, signed int v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = -2;
signed char v50 = 2;
unsigned int v49 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = -4;
unsigned char v54 = 4;
signed short v53 = 3;
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
unsigned int v58;
v58 = v1 ();
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
