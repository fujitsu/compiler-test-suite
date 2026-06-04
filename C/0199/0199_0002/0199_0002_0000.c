#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
unsigned int v3 (unsigned short);
unsigned int (*v4) (unsigned short) = v3;
extern signed short v5 (unsigned char, signed char, signed char);
extern signed short (*v6) (unsigned char, signed char, signed char);
extern void v7 (unsigned int, signed char);
extern void (*v8) (unsigned int, signed char);
extern void v9 (signed short, signed int, unsigned short);
extern void (*v10) (signed short, signed int, unsigned short);
extern unsigned char v11 (unsigned short, unsigned char, signed char);
extern unsigned char (*v12) (unsigned short, unsigned char, signed char);
extern unsigned short v13 (unsigned int, signed short, unsigned short);
extern unsigned short (*v14) (unsigned int, signed short, unsigned short);
unsigned char v15 (signed int, signed int, signed short, unsigned int);
unsigned char (*v16) (signed int, signed int, signed short, unsigned int) = v15;
unsigned short v17 (unsigned char);
unsigned short (*v18) (unsigned char) = v17;
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned char v23 (unsigned int, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char);
void v25 (signed char, unsigned int, signed char, signed char);
void (*v26) (signed char, unsigned int, signed char, signed char) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (unsigned char, unsigned short, unsigned short);
extern signed char (*v30) (unsigned char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed short v32 = -2;
signed char v31 = 1;

void v25 (signed char v34, unsigned int v35, signed char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 1;
signed int v39 = -4;
signed short v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned int v43 = 1U;
unsigned int v42 = 4U;
unsigned char v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned char v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 0;
signed char v46 = 3;
unsigned short v45 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v48, signed int v49, signed short v50, unsigned int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 0U;
signed short v53 = 2;
signed int v52 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -2;
signed short v57 = -1;
signed short v56 = 1;
trace++;
switch (trace)
{
case 3: 
return 5U;
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
signed char v61;
v61 = v1 ();
history[history_index++] = (int)v61;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
