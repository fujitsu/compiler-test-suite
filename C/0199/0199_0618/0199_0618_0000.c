#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, signed char);
extern signed short (*v2) (signed int, unsigned short, signed char);
extern void v3 (signed int, signed char, signed char, unsigned char);
extern void (*v4) (signed int, signed char, signed char, unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (unsigned int, unsigned int, unsigned int);
extern signed short (*v8) (unsigned int, unsigned int, unsigned int);
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
void v15 (unsigned short, unsigned char, signed char);
void (*v16) (unsigned short, unsigned char, signed char) = v15;
unsigned int v17 (signed char, signed char, unsigned short);
unsigned int (*v18) (signed char, signed char, unsigned short) = v17;
extern unsigned char v19 (signed char, signed char, unsigned int, unsigned short);
extern unsigned char (*v20) (signed char, signed char, unsigned int, unsigned short);
extern unsigned int v23 (signed char, unsigned short);
extern unsigned int (*v24) (signed char, unsigned short);
extern signed int v25 (signed char, unsigned char);
extern signed int (*v26) (signed char, unsigned char);
extern unsigned char v27 (unsigned int, signed int, signed int, unsigned int);
extern unsigned char (*v28) (unsigned int, signed int, signed int, unsigned int);
unsigned short v29 (unsigned int, signed int, unsigned int);
unsigned short (*v30) (unsigned int, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed int v32 = -4;
unsigned char v31 = 6;

unsigned short v29 (unsigned int v34, signed int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -2;
signed char v38 = 1;
unsigned short v37 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v40, signed char v41, unsigned short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -3;
unsigned int v44 = 5U;
unsigned short v43 = 1;
trace++;
switch (trace)
{
case 9: 
return 6U;
case 11: 
return 3U;
default: abort ();
}
}
}
}

void v15 (unsigned short v46, unsigned char v47, signed char v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 0;
signed char v50 = 2;
signed short v49 = -1;
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
signed int v54;
unsigned short v55;
signed char v56;
signed short v57;
v54 = v33 + 1;
v55 = 0 + 7;
v56 = -3 + -4;
v57 = v1 (v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
