#include <stdio.h>
#include <stdlib.h>
static signed int v1 (void);
static signed int (*v2) (void) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
signed int v5 (unsigned short, unsigned int, signed int, unsigned short);
signed int (*v6) (unsigned short, unsigned int, signed int, unsigned short) = v5;
extern signed short v7 (signed char, signed char, signed char, signed char);
extern signed short (*v8) (signed char, signed char, signed char, signed char);
signed short v9 (signed short, unsigned int);
signed short (*v10) (signed short, unsigned int) = v9;
signed short v11 (unsigned char);
signed short (*v12) (unsigned char) = v11;
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (unsigned char, unsigned char, signed char);
extern signed int (*v20) (unsigned char, unsigned char, signed char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (unsigned short, unsigned int);
extern signed int (*v26) (unsigned short, unsigned int);
extern unsigned short v27 (unsigned char, signed short, unsigned char);
extern unsigned short (*v28) (unsigned char, signed short, unsigned char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
unsigned int v32 = 7U;
signed short v31 = 3;

signed short v11 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 3;
signed short v36 = -2;
signed int v35 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed short v38, unsigned int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 6;
signed int v41 = -1;
unsigned int v40 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v43, unsigned int v44, signed int v45, unsigned short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 7;
signed int v48 = 1;
unsigned short v47 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (void)
{
{
for (;;) {
signed short v52 = 0;
unsigned int v51 = 5U;
signed int v50 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed char v53;
v53 = v3 ();
history[history_index++] = (int)v53;
}
break;
case 2: 
{
signed char v54;
signed char v55;
signed char v56;
signed char v57;
signed short v58;
v54 = 0 + -2;
v55 = -2 - -4;
v56 = 2 - 2;
v57 = 2 - 0;
v58 = v7 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 6: 
{
unsigned char v59;
unsigned char v60;
signed char v61;
signed int v62;
v59 = 7 - 0;
v60 = 6 - 0;
v61 = 2 + 0;
v62 = v19 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 12: 
return v50;
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
signed int v65;
v65 = v1 ();
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
