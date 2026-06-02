#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned int);
extern unsigned short (*v2) (signed char, unsigned int);
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
extern signed int v5 (signed short, unsigned char, signed short);
extern signed int (*v6) (signed short, unsigned char, signed short);
extern signed char v7 (signed int, signed short);
extern signed char (*v8) (signed int, signed short);
extern unsigned char v9 (signed char, signed int);
extern unsigned char (*v10) (signed char, signed int);
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
void v13 (unsigned short, unsigned short, signed char);
void (*v14) (unsigned short, unsigned short, signed char) = v13;
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
void v17 (void);
void (*v18) (void) = v17;
extern void v19 (void);
extern void (*v20) (void);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern unsigned short v27 (unsigned char, signed char);
extern unsigned short (*v28) (unsigned char, signed char);
signed int v29 (unsigned short, signed short, unsigned short, signed short);
signed int (*v30) (unsigned short, signed short, unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned short v32 = 1;
unsigned char v31 = 3;

signed int v29 (unsigned short v34, signed short v35, unsigned short v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 0;
signed short v39 = 3;
unsigned short v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned int v43 = 6U;
signed short v42 = 2;
unsigned int v41 = 7U;
trace++;
switch (trace)
{
case 7: 
return 1;
case 11: 
return 3;
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
unsigned int v46 = 2U;
signed int v45 = 1;
unsigned short v44 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v47, unsigned short v48, signed char v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 3;
signed short v51 = 2;
unsigned char v50 = 4;
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
signed char v55;
unsigned int v56;
unsigned short v57;
v55 = -1 - 3;
v56 = 1U + 0U;
v57 = v1 (v55, v56);
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
