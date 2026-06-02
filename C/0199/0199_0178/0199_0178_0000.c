#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned int v5 (signed char, signed short, signed char, unsigned short);
extern unsigned int (*v6) (signed char, signed short, signed char, unsigned short);
extern signed short v7 (unsigned char, signed char);
extern signed short (*v8) (unsigned char, signed char);
unsigned short v9 (unsigned short, unsigned char);
unsigned short (*v10) (unsigned short, unsigned char) = v9;
unsigned char v11 (signed char, unsigned char, unsigned int, unsigned int);
unsigned char (*v12) (signed char, unsigned char, unsigned int, unsigned int) = v11;
extern signed char v13 (signed char, signed short, signed short);
extern signed char (*v14) (signed char, signed short, signed short);
signed char v15 (signed int, unsigned short);
signed char (*v16) (signed int, unsigned short) = v15;
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
signed char v21 (void);
signed char (*v22) (void) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (unsigned short, signed int);
extern unsigned int (*v26) (unsigned short, signed int);
extern unsigned char v27 (signed short, signed int);
extern unsigned char (*v28) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned short v32 = 1;
signed char v31 = -4;

signed char v21 (void)
{
{
for (;;) {
unsigned short v36 = 0;
unsigned short v35 = 0;
signed int v34 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned char v39 = 7;
signed char v38 = 3;
signed short v37 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v40, unsigned short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 7;
unsigned int v43 = 6U;
unsigned char v42 = 0;
trace++;
switch (trace)
{
case 5: 
return 3;
default: abort ();
}
}
}
}

unsigned char v11 (signed char v45, unsigned char v46, unsigned int v47, unsigned int v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 3;
unsigned short v50 = 7;
unsigned char v49 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v52, unsigned char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = -4;
signed int v55 = 1;
unsigned int v54 = 5U;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v57;
unsigned int v58;
v57 = v52 + 2;
v58 = v17 (v57);
history[history_index++] = (int)v58;
}
break;
case 13: 
return v52;
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
