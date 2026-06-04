#include <stdio.h>
#include <stdlib.h>
static signed short v1 (void);
static signed short (*v2) (void) = v1;
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
signed char v9 (void);
signed char (*v10) (void) = v9;
signed short v11 (unsigned short, signed short, signed int);
signed short (*v12) (unsigned short, signed short, signed int) = v11;
extern unsigned int v13 (signed short, signed int, signed short);
extern unsigned int (*v14) (signed short, signed int, signed short);
extern unsigned short v15 (unsigned int, signed short, unsigned short);
extern unsigned short (*v16) (unsigned int, signed short, unsigned short);
extern signed char v17 (signed char, signed short, signed short);
extern signed char (*v18) (signed char, signed short, signed short);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (unsigned short, signed char);
extern void (*v28) (unsigned short, signed char);
extern signed int v29 (signed char, signed int, unsigned char);
extern signed int (*v30) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
signed short v32 = -3;
unsigned int v31 = 7U;

signed short v11 (unsigned short v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -3;
signed char v38 = 0;
signed char v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed short v42 = -2;
signed char v41 = -4;
signed short v40 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned char v45 = 5;
unsigned char v44 = 3;
unsigned char v43 = 7;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v46;
v46 = v25 ();
history[history_index++] = (int)v46;
}
break;
case 7: 
{
signed short v47;
signed int v48;
signed short v49;
unsigned int v50;
v47 = -1 + -3;
v48 = 0 + -2;
v49 = -3 - -4;
v50 = v13 (v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 11: 
return 2;
case 13: 
return -1;
default: abort ();
}
}
}
}

static signed short v1 (void)
{
{
for (;;) {
unsigned short v53 = 3;
signed int v52 = 3;
signed int v51 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v54;
signed short v55;
signed short v56;
signed char v57;
v54 = -3 + 0;
v55 = -3 + 3;
v56 = -4 - 2;
v57 = v17 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 4: 
{
signed short v58;
v58 = v5 ();
history[history_index++] = (int)v58;
}
break;
case 14: 
return 1;
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
signed short v61;
v61 = v1 ();
history[history_index++] = (int)v61;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
