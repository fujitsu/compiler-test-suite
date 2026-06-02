#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, unsigned char, signed int, unsigned short);
extern signed short (*v2) (signed char, unsigned char, signed int, unsigned short);
extern unsigned short v3 (unsigned char, signed short);
extern unsigned short (*v4) (unsigned char, signed short);
extern signed short v5 (unsigned int, signed short, unsigned int);
extern signed short (*v6) (unsigned int, signed short, unsigned int);
extern void v7 (signed short, unsigned char);
extern void (*v8) (signed short, unsigned char);
extern unsigned short v9 (signed char, signed char, unsigned int);
extern unsigned short (*v10) (signed char, signed char, unsigned int);
void v11 (void);
void (*v12) (void) = v11;
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
unsigned int v15 (signed char);
unsigned int (*v16) (signed char) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned int);
extern signed int v25 (signed int, signed char, signed char, unsigned int);
extern signed int (*v26) (signed int, signed char, signed char, unsigned int);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern signed short v29 (signed char, signed int, signed short, signed int);
extern signed short (*v30) (signed char, signed int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned short v32 = 1;
unsigned int v31 = 1U;

signed int v27 (void)
{
{
for (;;) {
unsigned char v36 = 2;
unsigned int v35 = 0U;
unsigned char v34 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v37;
signed short v38;
unsigned short v39;
v37 = 5 + v36;
v38 = -2 + 2;
v39 = v3 (v37, v38);
history[history_index++] = (int)v39;
}
break;
case 7: 
{
signed char v40;
v40 = v17 ();
history[history_index++] = (int)v40;
}
break;
case 11: 
return -2;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned int v15 (signed char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 4U;
unsigned char v43 = 6;
signed int v42 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
signed int v47 = -3;
unsigned char v46 = 7;
signed int v45 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
unsigned short v50 = 7;
signed char v49 = -2;
signed short v48 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed int v51;
signed char v52;
signed char v53;
unsigned int v54;
signed int v55;
v51 = -4 - 2;
v52 = v49 + -1;
v53 = v49 - v49;
v54 = 0U - 6U;
v55 = v25 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 15: 
return;
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
signed char v58;
unsigned char v59;
signed int v60;
unsigned short v61;
signed short v62;
v58 = -2 + -2;
v59 = 1 - 2;
v60 = -1 - 3;
v61 = v33 - v33;
v62 = v1 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
