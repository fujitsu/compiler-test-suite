#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, unsigned char, signed char);
extern unsigned int (*v2) (signed int, unsigned char, signed char);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern signed char v5 (signed char, unsigned short, unsigned char);
extern signed char (*v6) (signed char, unsigned short, unsigned char);
extern signed int v7 (signed short, unsigned short, signed short);
extern signed int (*v8) (signed short, unsigned short, signed short);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
unsigned char v11 (unsigned short);
unsigned char (*v12) (unsigned short) = v11;
extern unsigned int v13 (unsigned char, signed char, signed short);
extern unsigned int (*v14) (unsigned char, signed char, signed short);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern void v17 (void);
extern void (*v18) (void);
unsigned int v19 (unsigned int, unsigned short, unsigned int, signed short);
unsigned int (*v20) (unsigned int, unsigned short, unsigned int, signed short) = v19;
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
signed short v32 = 3;
signed int v31 = -1;

unsigned int v19 (unsigned int v34, unsigned short v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 2;
signed int v39 = 3;
unsigned int v38 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
unsigned int v43 = 1U;
signed char v42 = 0;
unsigned short v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 0;
unsigned char v46 = 6;
unsigned int v45 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned char v50 = 6;
unsigned char v49 = 0;
signed int v48 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v51;
signed char v52;
v51 = 7 - 3;
v52 = v29 (v51);
history[history_index++] = (int)v52;
}
break;
case 5: 
{
unsigned short v53;
signed char v54;
v53 = 1 + 6;
v54 = v29 (v53);
history[history_index++] = (int)v54;
}
break;
case 7: 
{
unsigned short v55;
signed char v56;
v55 = 7 + 0;
v56 = v29 (v55);
history[history_index++] = (int)v56;
}
break;
case 9: 
{
signed short v57;
signed char v58;
unsigned int v59;
v57 = -4 + -3;
v58 = 0 - 2;
v59 = v25 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 11: 
return 3;
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
signed int v62;
unsigned char v63;
signed char v64;
unsigned int v65;
v62 = -3 + 0;
v63 = 1 - 1;
v64 = 1 - -2;
v65 = v1 (v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
