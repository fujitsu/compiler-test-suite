#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
extern unsigned int v9 (signed short, signed int, signed char);
extern unsigned int (*v10) (signed short, signed int, signed char);
void v11 (unsigned char, unsigned short, unsigned char, signed int);
void (*v12) (unsigned char, unsigned short, unsigned char, signed int) = v11;
extern unsigned int v13 (signed int, signed short, unsigned char);
extern unsigned int (*v14) (signed int, signed short, unsigned char);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
void v19 (unsigned short);
void (*v20) (unsigned short) = v19;
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (signed char, signed int, signed int, signed int);
extern unsigned char (*v26) (signed char, signed int, signed int, signed int);
signed short v27 (unsigned int, signed int, unsigned int);
signed short (*v28) (unsigned int, signed int, unsigned int) = v27;
extern unsigned short v29 (signed int, signed int);
extern unsigned short (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned char v32 = 1;
unsigned int v31 = 0U;

signed short v27 (unsigned int v34, signed int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 2U;
signed int v38 = -4;
signed char v37 = 0;
trace++;
switch (trace)
{
case 5: 
return -3;
case 7: 
return -1;
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
signed short v42 = -2;
unsigned char v41 = 2;
unsigned char v40 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned short v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 5;
unsigned char v45 = 5;
signed char v44 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v47, unsigned short v48, unsigned char v49, signed int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 7;
signed char v52 = -1;
signed int v51 = -1;
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

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v56;
v56 = v1 ();
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
