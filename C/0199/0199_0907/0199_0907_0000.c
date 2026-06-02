#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char, unsigned char);
extern unsigned short (*v2) (unsigned char, signed char, unsigned char);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed char v7 (unsigned char, signed int);
extern signed char (*v8) (unsigned char, signed int);
signed char v9 (signed char);
signed char (*v10) (signed char) = v9;
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (unsigned int, signed int);
extern void (*v24) (unsigned int, signed int);
extern unsigned short v25 (unsigned short, unsigned short);
extern unsigned short (*v26) (unsigned short, unsigned short);
signed short v27 (signed char);
signed short (*v28) (signed char) = v27;
unsigned char v29 (signed short, signed int, unsigned short, unsigned short);
unsigned char (*v30) (signed short, signed int, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed char v32 = 3;
unsigned int v31 = 3U;

unsigned char v29 (signed short v34, signed int v35, unsigned short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 4;
unsigned int v39 = 3U;
unsigned short v38 = 0;
trace++;
switch (trace)
{
case 2: 
return 4;
case 4: 
return v40;
default: abort ();
}
}
}
}

signed short v27 (signed char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = 2;
unsigned int v43 = 2U;
unsigned short v42 = 4;
trace++;
switch (trace)
{
case 10: 
return -2;
default: abort ();
}
}
}
}

signed char v9 (signed char v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 1;
unsigned char v47 = 7;
signed int v46 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
signed short v51 = -3;
unsigned int v50 = 5U;
unsigned char v49 = 6;
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
unsigned char v54;
signed char v55;
unsigned char v56;
unsigned short v57;
v54 = 1 - 3;
v55 = v32 + v32;
v56 = 2 - 5;
v57 = v1 (v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
