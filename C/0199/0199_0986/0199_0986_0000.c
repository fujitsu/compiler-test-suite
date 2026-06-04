#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v9 (signed short, unsigned short, unsigned int);
extern signed int (*v10) (signed short, unsigned short, unsigned int);
signed short v11 (void);
signed short (*v12) (void) = v11;
unsigned char v13 (unsigned char, signed short, signed short, unsigned char);
unsigned char (*v14) (unsigned char, signed short, signed short, unsigned char) = v13;
extern unsigned char v15 (signed char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned int, unsigned short);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern unsigned char v21 (signed char, unsigned char);
extern unsigned char (*v22) (signed char, unsigned char);
unsigned int v23 (unsigned char, signed int, unsigned int);
unsigned int (*v24) (unsigned char, signed int, unsigned int) = v23;
extern unsigned char v25 (signed int, signed char);
extern unsigned char (*v26) (signed int, signed char);
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
unsigned char v29 (signed char);
unsigned char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
signed short v32 = 2;
signed short v31 = 2;

unsigned char v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 2;
signed short v36 = -1;
unsigned int v35 = 7U;
trace++;
switch (trace)
{
case 5: 
return 5;
case 7: 
return 7;
case 9: 
return 5;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v38, signed int v39, unsigned int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 1;
signed int v42 = -4;
unsigned char v41 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v44, signed short v45, signed short v46, unsigned char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned char v50 = 5;
unsigned char v49 = 3;
unsigned char v48 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed short v53 = -4;
unsigned short v52 = 3;
signed int v51 = -2;
trace++;
switch (trace)
{
case 1: 
return v53;
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
unsigned short v56;
v56 = v1 ();
history[history_index++] = (int)v56;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
