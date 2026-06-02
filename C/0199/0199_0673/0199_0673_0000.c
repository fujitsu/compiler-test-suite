#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v2) (unsigned char, signed char, unsigned char, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (unsigned char, unsigned int, unsigned char, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned short v13 (unsigned char, signed short, signed short);
extern unsigned short (*v14) (unsigned char, signed short, signed short);
extern unsigned int v15 (unsigned char, unsigned int, signed short);
extern unsigned int (*v16) (unsigned char, unsigned int, signed short);
signed int v17 (unsigned int, unsigned short, unsigned int, signed char);
signed int (*v18) (unsigned int, unsigned short, unsigned int, signed char) = v17;
signed int v19 (unsigned char, signed int);
signed int (*v20) (unsigned char, signed int) = v19;
extern unsigned short v21 (signed short, unsigned int, unsigned short, signed int);
extern unsigned short (*v22) (signed short, unsigned int, unsigned short, signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
signed short v27 (signed char, unsigned int, unsigned char, signed char);
signed short (*v28) (signed char, unsigned int, unsigned char, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
unsigned char v32 = 0;
unsigned char v31 = 5;

signed short v27 (signed char v34, unsigned int v35, unsigned char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 7;
unsigned char v39 = 6;
unsigned char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 3;
unsigned char v44 = 7;
unsigned char v43 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v46, unsigned short v47, unsigned int v48, signed char v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = -2;
signed char v51 = -3;
unsigned short v50 = 3;
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
unsigned char v55;
signed char v56;
unsigned char v57;
signed short v58;
unsigned short v59;
v55 = v31 - 5;
v56 = -2 + -2;
v57 = v31 - 4;
v58 = 3 + 2;
v59 = v1 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
