#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, signed short);
extern unsigned int (*v2) (signed char, signed short);
extern unsigned short v3 (unsigned short, unsigned int);
extern unsigned short (*v4) (unsigned short, unsigned int);
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
unsigned int v13 (signed short, signed short);
unsigned int (*v14) (signed short, signed short) = v13;
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern void v17 (unsigned short, signed short, unsigned char, signed short);
extern void (*v18) (unsigned short, signed short, unsigned char, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
signed int v25 (void);
signed int (*v26) (void) = v25;
void v29 (unsigned short, unsigned char, signed char, unsigned int);
void (*v30) (unsigned short, unsigned char, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed short v32 = -2;
unsigned short v31 = 6;

void v29 (unsigned short v34, unsigned char v35, signed char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 1;
unsigned int v39 = 0U;
unsigned char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed char v43 = 2;
unsigned char v42 = 2;
signed char v41 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned char v46 = 4;
unsigned short v45 = 1;
unsigned short v44 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v47, signed short v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 6U;
signed short v50 = 0;
unsigned short v49 = 4;
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
signed char v54;
signed short v55;
unsigned int v56;
v54 = -1 - -1;
v55 = v32 - -3;
v56 = v1 (v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
