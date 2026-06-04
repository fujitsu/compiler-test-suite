#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, signed int);
extern unsigned char (*v2) (signed int, signed int);
signed int v3 (signed int, unsigned char, unsigned int);
signed int (*v4) (signed int, unsigned char, unsigned int) = v3;
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed int, unsigned int);
extern signed short (*v10) (signed int, unsigned int);
extern signed short v11 (signed char, signed char, unsigned int, signed char);
extern signed short (*v12) (signed char, signed char, unsigned int, signed char);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned char v17 (unsigned int, unsigned char, unsigned int, signed char);
unsigned char (*v18) (unsigned int, unsigned char, unsigned int, signed char) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed short, signed short, unsigned int, signed int);
extern signed int (*v22) (signed short, signed short, unsigned int, signed int);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
unsigned short v29 (signed short, unsigned short, signed char);
unsigned short (*v30) (signed short, unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned short v32 = 4;
unsigned int v31 = 4U;

unsigned short v29 (signed short v34, unsigned short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 2;
signed int v38 = -2;
unsigned char v37 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v40, unsigned char v41, unsigned int v42, signed char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = -1;
signed short v45 = 1;
unsigned short v44 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v47, unsigned char v48, unsigned int v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 6;
signed int v51 = 2;
unsigned short v50 = 0;
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
signed int v55;
signed int v56;
unsigned char v57;
v55 = v33 - v33;
v56 = v33 - v33;
v57 = v1 (v55, v56);
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
