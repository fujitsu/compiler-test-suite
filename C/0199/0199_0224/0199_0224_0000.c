#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, signed char, signed short);
extern signed char (*v2) (signed int, unsigned int, signed char, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed char, signed short);
extern signed short (*v8) (signed char, signed short);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned char v11 (unsigned int, signed char, unsigned char);
extern unsigned char (*v12) (unsigned int, signed char, unsigned char);
signed char v13 (signed int, signed char);
signed char (*v14) (signed int, signed char) = v13;
extern unsigned short v15 (signed int, signed short, signed short);
extern unsigned short (*v16) (signed int, signed short, signed short);
extern unsigned int v17 (unsigned int, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short);
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned int v25 (signed int, unsigned char, signed short);
extern unsigned int (*v26) (signed int, unsigned char, signed short);
void v27 (unsigned char);
void (*v28) (unsigned char) = v27;
void v29 (unsigned int, signed int, signed short);
void (*v30) (unsigned int, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned short v32 = 4;
unsigned char v31 = 3;

void v29 (unsigned int v34, signed int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 7;
signed char v38 = 2;
unsigned int v37 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (unsigned char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 2U;
signed char v42 = -1;
signed short v41 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v44, signed char v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = -1;
signed short v47 = 0;
unsigned int v46 = 7U;
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
signed int v51;
unsigned int v52;
signed char v53;
signed short v54;
signed char v55;
v51 = 3 + -1;
v52 = 7U - 6U;
v53 = 2 - -4;
v54 = 3 + 0;
v55 = v1 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
