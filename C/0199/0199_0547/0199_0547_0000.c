#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int, signed short, signed short);
extern signed short (*v2) (unsigned int, signed short, signed short);
extern unsigned char v3 (unsigned char, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
extern unsigned int v7 (signed int, unsigned char);
extern unsigned int (*v8) (signed int, unsigned char);
void v9 (unsigned int, unsigned char);
void (*v10) (unsigned int, unsigned char) = v9;
extern unsigned short v11 (unsigned char, signed short, signed int);
extern unsigned short (*v12) (unsigned char, signed short, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
signed short v15 (unsigned char);
signed short (*v16) (unsigned char) = v15;
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern unsigned char v23 (signed short, signed short);
extern unsigned char (*v24) (signed short, signed short);
void v25 (unsigned short, signed int);
void (*v26) (unsigned short, signed int) = v25;
void v27 (unsigned short);
void (*v28) (unsigned short) = v27;
extern void v29 (signed char, unsigned char);
extern void (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned int v32 = 5U;
unsigned int v31 = 4U;

void v27 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 2U;
unsigned short v36 = 1;
signed int v35 = -3;
trace++;
switch (trace)
{
case 4: 
return;
default: abort ();
}
}
}
}

void v25 (unsigned short v38, signed int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = -1;
signed short v41 = 1;
unsigned char v40 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -2;
signed short v45 = -2;
signed char v44 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v47, unsigned char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed short v51 = -3;
signed char v50 = 3;
unsigned int v49 = 3U;
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
unsigned int v54;
signed short v55;
signed short v56;
signed short v57;
v54 = v32 + v32;
v55 = v33 + v33;
v56 = v33 - 1;
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
