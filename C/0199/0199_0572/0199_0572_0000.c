#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned char);
extern unsigned int (*v2) (unsigned short, signed short, unsigned char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (signed int, unsigned char, signed short, unsigned int);
extern signed short (*v8) (signed int, unsigned char, signed short, unsigned int);
extern signed char v9 (unsigned short);
extern signed char (*v10) (unsigned short);
signed int v11 (void);
signed int (*v12) (void) = v11;
signed short v13 (signed char, unsigned short, unsigned int, unsigned int);
signed short (*v14) (signed char, unsigned short, unsigned int, unsigned int) = v13;
unsigned char v15 (signed int, signed char, signed short);
unsigned char (*v16) (signed int, signed char, signed short) = v15;
extern signed short v17 (unsigned int, signed char, signed short, unsigned char);
extern signed short (*v18) (unsigned int, signed char, signed short, unsigned char);
extern unsigned char v19 (signed short, unsigned short, signed int, unsigned char);
extern unsigned char (*v20) (signed short, unsigned short, signed int, unsigned char);
extern unsigned short v23 (signed char, signed short);
extern unsigned short (*v24) (signed char, signed short);
unsigned int v25 (signed int, signed int);
unsigned int (*v26) (signed int, signed int) = v25;
extern signed short v27 (unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned int, unsigned short);
extern unsigned char v29 (unsigned short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed int v32 = 2;
unsigned char v31 = 4;

unsigned int v25 (signed int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -4;
unsigned short v37 = 2;
signed char v36 = -1;
trace++;
switch (trace)
{
case 3: 
return 1U;
default: abort ();
}
}
}
}

unsigned char v15 (signed int v39, signed char v40, signed short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 7U;
unsigned int v43 = 4U;
signed char v42 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed char v45, unsigned short v46, unsigned int v47, unsigned int v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 6U;
unsigned char v50 = 6;
signed char v49 = -2;
trace++;
switch (trace)
{
case 5: 
{
signed short v52;
unsigned short v53;
signed int v54;
unsigned char v55;
unsigned char v56;
v52 = 1 + 1;
v53 = 1 - 7;
v54 = 3 - 2;
v55 = v50 + 6;
v56 = v19 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed int v59 = 0;
signed int v58 = 2;
unsigned short v57 = 4;
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
unsigned short v62;
signed short v63;
unsigned char v64;
unsigned int v65;
v62 = 3 - 3;
v63 = -4 + 0;
v64 = 4 - 6;
v65 = v1 (v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
