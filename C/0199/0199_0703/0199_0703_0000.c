#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, signed int);
extern unsigned char (*v2) (signed short, signed int);
extern signed short v3 (signed int, signed char, signed int, signed char);
extern signed short (*v4) (signed int, signed char, signed int, signed char);
signed char v5 (signed char, signed int, unsigned int, signed short);
signed char (*v6) (signed char, signed int, unsigned int, signed short) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned int v9 (unsigned char, signed char, signed short);
unsigned int (*v10) (unsigned char, signed char, signed short) = v9;
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern signed int v13 (unsigned char, signed short);
extern signed int (*v14) (unsigned char, signed short);
extern void v15 (signed char, unsigned char);
extern void (*v16) (signed char, unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (unsigned int, signed int, signed int, signed char);
extern unsigned char (*v20) (unsigned int, signed int, signed int, signed char);
extern signed int v21 (unsigned int, signed char, unsigned char, unsigned short);
extern signed int (*v22) (unsigned int, signed char, unsigned char, unsigned short);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern signed short v25 (unsigned short, signed short, signed short, unsigned int);
extern signed short (*v26) (unsigned short, signed short, signed short, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
signed short v29 (signed int, unsigned char, signed char, unsigned int);
signed short (*v30) (signed int, unsigned char, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned short v32 = 5;
unsigned char v31 = 5;

signed short v29 (signed int v34, unsigned char v35, signed char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1;
signed int v39 = 2;
signed short v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v41, signed char v42, signed short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 2;
unsigned char v45 = 4;
signed char v44 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v47, signed int v48, unsigned int v49, signed short v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = -1;
signed int v52 = -1;
signed int v51 = -3;
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
signed short v56;
signed int v57;
unsigned char v58;
v56 = v33 - v33;
v57 = 2 - 2;
v58 = v1 (v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
