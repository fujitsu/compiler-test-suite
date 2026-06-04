#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
void v3 (signed short, unsigned short, unsigned short);
void (*v4) (signed short, unsigned short, unsigned short) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed int, unsigned char);
extern signed short (*v8) (signed int, unsigned char);
extern unsigned int v9 (signed char, unsigned int);
extern unsigned int (*v10) (signed char, unsigned int);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern signed char v13 (unsigned char, unsigned char);
extern signed char (*v14) (unsigned char, unsigned char);
extern signed int v15 (signed short, unsigned char, signed short);
extern signed int (*v16) (signed short, unsigned char, signed short);
extern void v17 (void);
extern void (*v18) (void);
unsigned int v19 (signed char, signed char);
unsigned int (*v20) (signed char, signed char) = v19;
extern signed int v21 (unsigned int, unsigned short, signed short);
extern signed int (*v22) (unsigned int, unsigned short, signed short);
unsigned int v23 (signed char, unsigned int, unsigned int);
unsigned int (*v24) (signed char, unsigned int, unsigned int) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (signed int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int);
void v29 (unsigned int, signed char, signed int);
void (*v30) (unsigned int, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
unsigned int v32 = 6U;
signed short v31 = 2;

void v29 (unsigned int v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 4U;
unsigned short v38 = 7;
unsigned char v37 = 6;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

unsigned int v23 (signed char v40, unsigned int v41, unsigned int v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 5;
unsigned short v44 = 2;
signed int v43 = -4;
trace++;
switch (trace)
{
case 11: 
return 4U;
default: abort ();
}
}
}
}

unsigned int v19 (signed char v46, signed char v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 2;
signed short v49 = -4;
unsigned int v48 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v51, unsigned short v52, unsigned short v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -1;
signed short v55 = 1;
signed short v54 = -1;
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
unsigned char v59;
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
