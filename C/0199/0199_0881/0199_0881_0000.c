#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned short, signed char);
extern signed char (*v2) (unsigned short, signed char);
signed char v3 (signed short, signed int, signed char);
signed char (*v4) (signed short, signed int, signed char) = v3;
extern signed short v5 (signed short, signed short);
extern signed short (*v6) (signed short, signed short);
extern signed int v9 (signed short, unsigned char, signed short);
extern signed int (*v10) (signed short, unsigned char, signed short);
extern signed short v11 (unsigned int, signed char);
extern signed short (*v12) (unsigned int, signed char);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
extern signed char v19 (signed int, unsigned short, signed int, signed char);
extern signed char (*v20) (signed int, unsigned short, signed int, signed char);
extern signed short v21 (unsigned int, signed char, signed int, signed char);
extern signed short (*v22) (unsigned int, signed char, signed int, signed char);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned char v25 (unsigned char, signed int);
extern unsigned char (*v26) (unsigned char, signed int);
extern signed short v27 (unsigned char);
extern signed short (*v28) (unsigned char);
extern unsigned int v29 (signed char, signed short);
extern unsigned int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned char v32 = 3;
signed int v31 = -1;

unsigned int v23 (void)
{
{
for (;;) {
signed int v36 = 3;
unsigned int v35 = 7U;
unsigned short v34 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
signed int v39 = 0;
signed short v38 = 1;
signed short v37 = -3;
trace++;
switch (trace)
{
case 2: 
return 4;
case 4: 
{
unsigned char v40;
signed short v41;
v40 = 5 + 3;
v41 = v27 (v40);
history[history_index++] = (int)v41;
}
break;
case 6: 
{
signed short v42;
signed char v43;
v42 = v37 + v38;
v43 = v17 (v42);
history[history_index++] = (int)v43;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed int v46 = -1;
unsigned char v45 = 7;
signed short v44 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed short v47, signed int v48, signed char v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = 1;
unsigned short v51 = 2;
signed short v50 = -1;
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
unsigned short v55;
signed char v56;
signed char v57;
v55 = 6 + 3;
v56 = -4 + -4;
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
