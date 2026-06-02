#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern void v3 (signed int, signed char, unsigned short);
extern void (*v4) (signed int, signed char, unsigned short);
extern unsigned short v5 (unsigned short, signed int, signed short, unsigned char);
extern unsigned short (*v6) (unsigned short, signed int, signed short, unsigned char);
unsigned int v7 (signed int, signed char, signed short);
unsigned int (*v8) (signed int, signed char, signed short) = v7;
extern void v9 (unsigned short, unsigned short, signed int, signed char);
extern void (*v10) (unsigned short, unsigned short, signed int, signed char);
extern signed int v11 (signed int, unsigned short, unsigned char, unsigned char);
extern signed int (*v12) (signed int, unsigned short, unsigned char, unsigned char);
extern signed short v13 (signed short, signed int);
extern signed short (*v14) (signed short, signed int);
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
extern signed char v17 (unsigned short, signed char);
extern signed char (*v18) (unsigned short, signed char);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
void v21 (unsigned int, unsigned short, signed int, signed char);
void (*v22) (unsigned int, unsigned short, signed int, signed char) = v21;
extern unsigned char v23 (unsigned char, signed short, signed char);
extern unsigned char (*v24) (unsigned char, signed short, signed char);
signed int v25 (unsigned int, signed short, unsigned int);
signed int (*v26) (unsigned int, signed short, unsigned int) = v25;
extern signed short v27 (unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned char, signed char);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
signed short v32 = -1;
unsigned int v31 = 4U;

signed char v29 (void)
{
{
for (;;) {
signed short v36 = -2;
unsigned short v35 = 7;
unsigned int v34 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned int v37, signed short v38, unsigned int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 7;
signed int v41 = 1;
unsigned int v40 = 7U;
trace++;
switch (trace)
{
case 7: 
return -4;
case 9: 
return v41;
default: abort ();
}
}
}
}

void v21 (unsigned int v43, unsigned short v44, signed int v45, signed char v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 1;
unsigned char v48 = 3;
unsigned int v47 = 6U;
trace++;
switch (trace)
{
case 5: 
return;
default: abort ();
}
}
}
}

unsigned int v7 (signed int v50, signed char v51, signed short v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = -2;
unsigned char v54 = 7;
unsigned short v53 = 7;
trace++;
switch (trace)
{
case 11: 
return 3U;
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
signed char v58;
unsigned char v59;
v58 = -3 - -2;
v59 = v1 (v58);
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
