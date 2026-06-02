#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, unsigned int, unsigned int, signed short);
extern signed char (*v2) (signed char, unsigned int, unsigned int, signed short);
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (signed char, unsigned short);
extern signed short (*v6) (signed char, unsigned short);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed char v9 (unsigned char, unsigned char, signed short);
extern signed char (*v10) (unsigned char, unsigned char, signed short);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern void v13 (signed int, signed short, signed char, unsigned int);
extern void (*v14) (signed int, signed short, signed char, unsigned int);
extern unsigned short v15 (signed short, signed int);
extern unsigned short (*v16) (signed short, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern signed char v19 (unsigned int, signed char, unsigned int, signed short);
extern signed char (*v20) (unsigned int, signed char, unsigned int, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
signed char v25 (unsigned int, unsigned int);
signed char (*v26) (unsigned int, unsigned int) = v25;
extern signed short v27 (unsigned char, unsigned char, unsigned short);
extern signed short (*v28) (unsigned char, unsigned char, unsigned short);
signed short v29 (unsigned int, signed char, unsigned char);
signed short (*v30) (unsigned int, signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
signed int v32 = -4;
unsigned int v31 = 7U;

signed short v29 (unsigned int v34, signed char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 2;
signed char v38 = -2;
signed int v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (unsigned int v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 7;
unsigned int v43 = 4U;
signed int v42 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed int v47 = 3;
signed int v46 = -2;
signed short v45 = -1;
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
signed char v50;
unsigned int v51;
unsigned int v52;
signed short v53;
signed char v54;
v50 = -2 + -3;
v51 = 3U + v31;
v52 = v31 - v31;
v53 = -1 + -1;
v54 = v1 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
