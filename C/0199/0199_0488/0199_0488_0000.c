#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, signed char);
extern void (*v2) (signed short, signed char);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
void v5 (signed int);
void (*v6) (signed int) = v5;
void v7 (void);
void (*v8) (void) = v7;
extern unsigned int v9 (signed char, unsigned short, unsigned char, signed char);
extern unsigned int (*v10) (signed char, unsigned short, unsigned char, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (unsigned char, signed short);
extern void (*v14) (unsigned char, signed short);
extern signed short v15 (signed int, signed short, unsigned short);
extern signed short (*v16) (signed int, signed short, unsigned short);
extern unsigned char v17 (signed char, signed int);
extern unsigned char (*v18) (signed char, signed int);
extern unsigned char v19 (signed char, signed char, signed int);
extern unsigned char (*v20) (signed char, signed char, signed int);
unsigned short v21 (unsigned short, signed int);
unsigned short (*v22) (unsigned short, signed int) = v21;
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern void v25 (signed char, unsigned short);
extern void (*v26) (signed char, unsigned short);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
signed int v29 (signed char, signed char, unsigned int);
signed int (*v30) (signed char, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
unsigned int v32 = 4U;
unsigned int v31 = 5U;

signed int v29 (signed char v34, signed char v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -4;
signed int v38 = 0;
unsigned char v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
unsigned char v42 = 5;
signed short v41 = 0;
unsigned short v40 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v43, signed int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 5;
unsigned char v46 = 5;
unsigned int v45 = 5U;
trace++;
switch (trace)
{
case 4: 
return v43;
case 8: 
return 5;
case 10: 
return v43;
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned short v50 = 7;
unsigned int v49 = 6U;
unsigned int v48 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed char v51;
unsigned short v52;
unsigned char v53;
signed char v54;
unsigned int v55;
v51 = 1 - 1;
v52 = v50 + 2;
v53 = 4 + 2;
v54 = 2 - 3;
v55 = v9 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

void v5 (signed int v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
signed char v59 = -2;
signed char v58 = -3;
signed short v57 = 0;
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
signed short v62;
signed char v63;
v62 = 3 - -3;
v63 = 1 + -2;
v1 (v62, v63);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
