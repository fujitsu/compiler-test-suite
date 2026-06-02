#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, unsigned char);
extern void (*v2) (signed short, unsigned char);
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern void v7 (unsigned short, signed char, unsigned int);
extern void (*v8) (unsigned short, signed char, unsigned int);
extern unsigned short v9 (unsigned short, unsigned char, signed int, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned char, signed int, unsigned char);
void v13 (void);
void (*v14) (void) = v13;
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern signed short v23 (unsigned short, unsigned int);
extern signed short (*v24) (unsigned short, unsigned int);
signed char v25 (signed int);
signed char (*v26) (signed int) = v25;
extern signed int v27 (signed short, signed int, signed int);
extern signed int (*v28) (signed short, signed int, signed int);
extern unsigned int v29 (signed short, signed int, unsigned int);
extern unsigned int (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned short v32 = 6;
signed char v31 = 2;

signed char v25 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -3;
signed char v36 = 1;
signed short v35 = 3;
trace++;
switch (trace)
{
case 2: 
return v36;
case 4: 
return v36;
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned int v40 = 3U;
unsigned char v39 = 0;
unsigned int v38 = 5U;
trace++;
switch (trace)
{
case 7: 
return v40;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed char v43 = 2;
signed int v42 = 3;
unsigned char v41 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed int v46 = -3;
unsigned int v45 = 1U;
unsigned char v44 = 4;
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
signed short v49;
unsigned char v50;
v49 = 2 + 0;
v50 = 6 + 2;
v1 (v49, v50);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
