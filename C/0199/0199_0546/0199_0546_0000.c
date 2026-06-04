#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, unsigned char);
extern signed short (*v2) (signed short, unsigned char);
extern signed short v3 (unsigned short, signed int, signed char, unsigned int);
extern signed short (*v4) (unsigned short, signed int, signed char, unsigned int);
extern signed int v5 (unsigned int, signed short, unsigned char, signed short);
extern signed int (*v6) (unsigned int, signed short, unsigned char, signed short);
extern signed short v7 (unsigned int, signed int);
extern signed short (*v8) (unsigned int, signed int);
extern signed char v9 (signed short, signed int, unsigned char, signed short);
extern signed char (*v10) (signed short, signed int, unsigned char, signed short);
extern signed short v11 (signed char, unsigned short, signed char, signed short);
extern signed short (*v12) (signed char, unsigned short, signed char, signed short);
extern signed char v13 (signed char, unsigned short, signed char, signed short);
extern signed char (*v14) (signed char, unsigned short, signed char, signed short);
extern unsigned short v15 (signed short);
extern unsigned short (*v16) (signed short);
extern unsigned int v17 (signed char, unsigned char);
extern unsigned int (*v18) (signed char, unsigned char);
extern signed char v19 (signed char, unsigned char);
extern signed char (*v20) (signed char, unsigned char);
signed char v21 (unsigned short);
signed char (*v22) (unsigned short) = v21;
unsigned int v23 (signed short, unsigned char, signed char);
unsigned int (*v24) (signed short, unsigned char, signed char) = v23;
extern unsigned short v25 (signed char, signed short, unsigned char);
extern unsigned short (*v26) (signed char, signed short, unsigned char);
extern unsigned char v27 (signed short, signed int, unsigned int);
extern unsigned char (*v28) (signed short, signed int, unsigned int);
extern signed int v29 (unsigned char, signed short, unsigned int, unsigned char);
extern signed int (*v30) (unsigned char, signed short, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed short v32 = -1;
signed char v31 = -1;

unsigned int v23 (signed short v34, unsigned char v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -1;
signed int v38 = -1;
signed int v37 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = -3;
unsigned char v42 = 5;
unsigned int v41 = 5U;
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
signed short v46;
unsigned char v47;
signed short v48;
v46 = v32 - v32;
v47 = 5 + 0;
v48 = v1 (v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
