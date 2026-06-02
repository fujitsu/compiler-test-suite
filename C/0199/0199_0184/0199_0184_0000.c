#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, signed char);
extern signed short (*v2) (signed int, signed char);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern unsigned char v5 (unsigned char, unsigned short, unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned char, unsigned char);
extern signed short v7 (unsigned short, signed short, unsigned char, unsigned short);
extern signed short (*v8) (unsigned short, signed short, unsigned char, unsigned short);
extern unsigned char v9 (unsigned int, unsigned int, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned int, unsigned short);
extern unsigned char v11 (unsigned char, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v12) (unsigned char, unsigned short, unsigned short, unsigned short);
signed char v13 (void);
signed char (*v14) (void) = v13;
void v15 (signed short, unsigned char);
void (*v16) (signed short, unsigned char) = v15;
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned int v19 (signed short, signed char, signed char, unsigned char);
extern unsigned int (*v20) (signed short, signed char, signed char, unsigned char);
void v21 (signed char, signed int, signed char);
void (*v22) (signed char, signed int, signed char) = v21;
extern unsigned short v23 (signed short, signed int, unsigned int, signed short);
extern unsigned short (*v24) (signed short, signed int, unsigned int, signed short);
extern signed char v25 (signed int, unsigned short, unsigned char);
extern signed char (*v26) (signed int, unsigned short, unsigned char);
extern signed char v27 (signed int, signed char, signed int);
extern signed char (*v28) (signed int, signed char, signed int);
extern void v29 (signed char, signed char, unsigned char, signed int);
extern void (*v30) (signed char, signed char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned char v32 = 1;
signed short v31 = 1;

void v21 (signed char v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 0U;
unsigned char v38 = 7;
unsigned char v37 = 7;
trace++;
switch (trace)
{
case 2: 
return;
case 5: 
return;
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned char v42 = 5;
unsigned int v41 = 6U;
signed int v40 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v43, unsigned char v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 5;
unsigned char v46 = 3;
signed short v45 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed int v50 = -1;
unsigned int v49 = 3U;
signed short v48 = 3;
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
signed int v53;
signed char v54;
signed short v55;
v53 = 2 - 2;
v54 = 3 + 0;
v55 = v1 (v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
