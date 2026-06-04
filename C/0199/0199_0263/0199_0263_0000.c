#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned char, signed int);
extern void (*v2) (unsigned short, unsigned char, unsigned char, signed int);
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
void v5 (void);
void (*v6) (void) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
signed int v13 (signed char, unsigned char);
signed int (*v14) (signed char, unsigned char) = v13;
signed short v15 (signed short, signed char);
signed short (*v16) (signed short, signed char) = v15;
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern unsigned int v19 (signed int, unsigned int, signed short);
extern unsigned int (*v20) (signed int, unsigned int, signed short);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
unsigned short v23 (signed short, signed int, signed char);
unsigned short (*v24) (signed short, signed int, signed char) = v23;
extern unsigned char v25 (signed int, unsigned char);
extern unsigned char (*v26) (signed int, unsigned char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed char v32 = 2;
signed int v31 = -2;

unsigned short v23 (signed short v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 0;
signed int v38 = -2;
unsigned short v37 = 2;
trace++;
switch (trace)
{
case 2: 
return v39;
default: abort ();
}
}
}
}

signed short v15 (signed short v40, signed char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 2;
signed short v43 = -3;
unsigned char v42 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed char v45, unsigned char v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 6U;
signed short v48 = 1;
signed short v47 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
unsigned int v52 = 0U;
signed short v51 = -4;
signed char v50 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed int v55 = -2;
unsigned char v54 = 4;
signed int v53 = 3;
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
unsigned short v58;
unsigned char v59;
unsigned char v60;
signed int v61;
v58 = 0 + 4;
v59 = 6 - 6;
v60 = 0 - 5;
v61 = v31 + -4;
v1 (v58, v59, v60, v61);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
