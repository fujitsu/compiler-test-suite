#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, signed int);
extern void (*v2) (unsigned short, signed int);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern signed int v5 (unsigned short, signed char, signed short, signed short);
extern signed int (*v6) (unsigned short, signed char, signed short, signed short);
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
unsigned short v9 (unsigned char, unsigned char, unsigned char);
unsigned short (*v10) (unsigned char, unsigned char, unsigned char) = v9;
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
unsigned char v15 (unsigned short, unsigned char, unsigned char);
unsigned char (*v16) (unsigned short, unsigned char, unsigned char) = v15;
extern signed int v17 (signed char, unsigned int, signed short, signed short);
extern signed int (*v18) (signed char, unsigned int, signed short, signed short);
void v19 (void);
void (*v20) (void) = v19;
extern signed char v21 (signed char, signed short);
extern signed char (*v22) (signed char, signed short);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
unsigned char v25 (unsigned short, signed int, unsigned int, signed int);
unsigned char (*v26) (unsigned short, signed int, unsigned int, signed int) = v25;
extern signed short v27 (unsigned int, unsigned int);
extern signed short (*v28) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned char v32 = 6;
unsigned int v31 = 5U;

unsigned char v25 (unsigned short v34, signed int v35, unsigned int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 3;
signed int v39 = -4;
unsigned int v38 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
signed char v43 = -2;
signed short v42 = 1;
unsigned int v41 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v44, unsigned char v45, unsigned char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 3;
signed short v48 = 3;
signed char v47 = -2;
trace++;
switch (trace)
{
case 1: 
return 5;
case 3: 
return v45;
case 5: 
return v46;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed char v52 = -2;
signed int v51 = 1;
signed char v50 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v53, unsigned char v54, unsigned char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -2;
signed short v57 = -3;
unsigned int v56 = 6U;
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
unsigned short v61;
signed int v62;
v61 = 1 - 3;
v62 = 2 + -4;
v1 (v61, v62);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
