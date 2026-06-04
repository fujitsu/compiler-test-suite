#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern unsigned char v7 (signed short, signed short, unsigned short, signed char);
extern unsigned char (*v8) (signed short, signed short, unsigned short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned short v11 (unsigned char, signed char);
unsigned short (*v12) (unsigned char, signed char) = v11;
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
signed short v17 (unsigned int, signed char, unsigned short, signed short);
signed short (*v18) (unsigned int, signed char, unsigned short, signed short) = v17;
extern unsigned int v19 (unsigned int, unsigned int, unsigned short);
extern unsigned int (*v20) (unsigned int, unsigned int, unsigned short);
unsigned char v21 (signed short, unsigned short);
unsigned char (*v22) (signed short, unsigned short) = v21;
extern signed char v23 (unsigned int, unsigned short);
extern signed char (*v24) (unsigned int, unsigned short);
extern unsigned char v25 (signed int);
extern unsigned char (*v26) (signed int);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
unsigned int v32 = 4U;
signed short v31 = -3;

signed char v27 (void)
{
{
for (;;) {
signed char v36 = 0;
signed char v35 = 2;
signed char v34 = -1;
trace++;
switch (trace)
{
case 4: 
return v34;
case 7: 
return 1;
case 9: 
return v34;
default: abort ();
}
}
}
}

unsigned char v21 (signed short v37, unsigned short v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = -1;
signed int v40 = 2;
signed short v39 = -1;
trace++;
switch (trace)
{
case 2: 
return 7;
case 6: 
{
signed char v42;
v42 = v27 ();
history[history_index++] = (int)v42;
}
break;
case 8: 
{
signed char v43;
v43 = v27 ();
history[history_index++] = (int)v43;
}
break;
case 10: 
return 5;
default: abort ();
}
}
}
}

signed short v17 (unsigned int v44, signed char v45, unsigned short v46, signed short v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 2U;
unsigned int v49 = 4U;
signed char v48 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v51, signed char v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = 3;
signed int v54 = -3;
signed char v53 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
unsigned short v58 = 2;
unsigned short v57 = 5;
signed short v56 = -3;
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
unsigned int v61;
unsigned int v62;
v61 = v32 - v32;
v62 = v1 (v61);
history[history_index++] = (int)v62;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
