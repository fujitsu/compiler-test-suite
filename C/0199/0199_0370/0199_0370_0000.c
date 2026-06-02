#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, signed char);
extern signed char (*v2) (signed int, unsigned int, signed char);
extern void v3 (signed char, signed short, unsigned int, unsigned short);
extern void (*v4) (signed char, signed short, unsigned int, unsigned short);
extern signed short v5 (signed char, signed char, unsigned int, signed int);
extern signed short (*v6) (signed char, signed char, unsigned int, signed int);
extern signed short v7 (signed char, signed char, signed int, signed int);
extern signed short (*v8) (signed char, signed char, signed int, signed int);
extern signed char v9 (unsigned short, signed short, unsigned int, unsigned int);
extern signed char (*v10) (unsigned short, signed short, unsigned int, unsigned int);
extern void v13 (signed int, signed int, signed short);
extern void (*v14) (signed int, signed int, signed short);
extern unsigned int v15 (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int v17 (unsigned char, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned int);
signed char v19 (signed char, unsigned int, signed char, signed char);
signed char (*v20) (signed char, unsigned int, signed char, signed char) = v19;
extern void v21 (unsigned short, signed short, signed short);
extern void (*v22) (unsigned short, signed short, signed short);
extern signed short v23 (unsigned char, signed char, signed char);
extern signed short (*v24) (unsigned char, signed char, signed char);
signed short v25 (unsigned int, unsigned short);
signed short (*v26) (unsigned int, unsigned short) = v25;
extern signed char v27 (signed char, unsigned short, signed int);
extern signed char (*v28) (signed char, unsigned short, signed int);
signed short v29 (signed short, unsigned short, unsigned char);
signed short (*v30) (signed short, unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
signed short v32 = -3;
signed int v31 = 2;

signed short v29 (signed short v34, unsigned short v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 5U;
signed int v38 = 3;
signed short v37 = 0;
trace++;
switch (trace)
{
case 9: 
return 1;
default: abort ();
}
}
}
}

signed short v25 (unsigned int v40, unsigned short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 1;
signed short v43 = -2;
signed short v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed char v45, unsigned int v46, signed char v47, signed char v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 1;
unsigned int v50 = 6U;
unsigned char v49 = 1;
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
unsigned int v55;
signed char v56;
signed char v57;
v54 = v31 + 0;
v55 = 4U + 6U;
v56 = -3 + 0;
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
