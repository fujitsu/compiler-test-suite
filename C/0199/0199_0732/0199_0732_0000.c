#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
void v3 (signed short);
void (*v4) (signed short) = v3;
unsigned short v7 (unsigned char, unsigned int);
unsigned short (*v8) (unsigned char, unsigned int) = v7;
void v11 (unsigned char);
void (*v12) (unsigned char) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned int v17 (unsigned int);
unsigned int (*v18) (unsigned int) = v17;
extern unsigned int v19 (signed short, unsigned short, unsigned int, signed char);
extern unsigned int (*v20) (signed short, unsigned short, unsigned int, signed char);
signed char v21 (signed char, unsigned int);
signed char (*v22) (signed char, unsigned int) = v21;
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
extern signed char v27 (unsigned short, signed char);
extern signed char (*v28) (unsigned short, signed char);
unsigned short v29 (unsigned int, unsigned short, unsigned short);
unsigned short (*v30) (unsigned int, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned char v32 = 4;
unsigned int v31 = 5U;

unsigned short v29 (unsigned int v34, unsigned short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 5;
signed int v38 = -3;
signed char v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed char v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 1;
unsigned short v43 = 0;
signed short v42 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = 3;
signed int v47 = 2;
signed char v46 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = -1;
unsigned char v51 = 7;
unsigned char v50 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v53, unsigned int v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 0;
signed short v56 = 3;
unsigned int v55 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
signed short v61 = 0;
signed short v60 = -3;
unsigned int v59 = 2U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v62;
v62 = v15 ();
history[history_index++] = (int)v62;
}
break;
case 7: 
return;
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
unsigned char v65;
signed short v66;
v65 = 0 + v32;
v66 = v1 (v65);
history[history_index++] = (int)v66;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
