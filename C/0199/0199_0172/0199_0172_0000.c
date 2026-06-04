#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, signed char, unsigned short);
extern signed short (*v2) (signed int, signed char, unsigned short);
extern unsigned int v3 (unsigned char, unsigned int);
extern unsigned int (*v4) (unsigned char, unsigned int);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern signed short v11 (unsigned char, signed char, unsigned char);
extern signed short (*v12) (unsigned char, signed char, unsigned char);
unsigned short v13 (unsigned char, unsigned short);
unsigned short (*v14) (unsigned char, unsigned short) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned char v17 (signed short, unsigned char, signed int, unsigned char);
unsigned char (*v18) (signed short, unsigned char, signed int, unsigned char) = v17;
extern unsigned short v19 (signed char, signed char, unsigned short, unsigned char);
extern unsigned short (*v20) (signed char, signed char, unsigned short, unsigned char);
extern signed short v21 (unsigned int, unsigned char, signed int);
extern signed short (*v22) (unsigned int, unsigned char, signed int);
signed short v23 (signed int);
signed short (*v24) (signed int) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
unsigned int v32 = 0U;
signed char v31 = 3;

unsigned char v29 (void)
{
{
for (;;) {
signed char v36 = -1;
unsigned short v35 = 3;
unsigned int v34 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed int v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -2;
unsigned short v39 = 4;
signed int v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v41, unsigned char v42, signed int v43, unsigned char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 3U;
unsigned int v46 = 0U;
signed short v45 = -2;
trace++;
switch (trace)
{
case 9: 
return v42;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v48, unsigned short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = 1;
signed short v51 = -2;
unsigned char v50 = 5;
trace++;
switch (trace)
{
case 4: 
return v49;
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
signed int v55;
signed char v56;
unsigned short v57;
signed short v58;
v55 = 1 - -3;
v56 = -4 - 3;
v57 = 4 + 4;
v58 = v1 (v55, v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
