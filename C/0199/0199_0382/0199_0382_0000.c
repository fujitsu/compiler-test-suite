#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, unsigned int, signed short);
extern unsigned short (*v2) (signed short, signed char, unsigned int, signed short);
extern signed int v3 (signed int, unsigned short, unsigned short);
extern signed int (*v4) (signed int, unsigned short, unsigned short);
extern signed char v5 (unsigned int, unsigned int, signed short, signed int);
extern signed char (*v6) (unsigned int, unsigned int, signed short, signed int);
extern signed short v7 (signed char, unsigned int);
extern signed short (*v8) (signed char, unsigned int);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned int);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned short v17 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v18) (unsigned char, unsigned short, unsigned char);
static signed char v19 (unsigned char, unsigned short, signed char);
static signed char (*v20) (unsigned char, unsigned short, signed char) = v19;
extern void v21 (unsigned char, signed char, signed short);
extern void (*v22) (unsigned char, signed char, signed short);
unsigned short v23 (unsigned short, unsigned int, signed int);
unsigned short (*v24) (unsigned short, unsigned int, signed int) = v23;
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed int v29 (signed int, unsigned short, signed char);
extern signed int (*v30) (signed int, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed short v32 = 0;
signed int v31 = -4;

unsigned short v23 (unsigned short v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 1;
unsigned char v38 = 1;
signed int v37 = -3;
trace++;
switch (trace)
{
case 8: 
return v39;
default: abort ();
}
}
}
}

static signed char v19 (unsigned char v40, unsigned short v41, signed char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = -3;
signed short v44 = 0;
signed int v43 = -2;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v46;
signed char v47;
signed short v48;
v46 = 7 - v40;
v47 = v42 + -2;
v48 = v44 - v44;
v21 (v46, v47, v48);
}
break;
case 10: 
{
unsigned char v49;
signed char v50;
signed short v51;
v49 = 5 + 4;
v50 = v42 + 3;
v51 = v44 + 1;
v21 (v49, v50, v51);
}
break;
case 12: 
return v42;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned short v54 = 5;
signed char v53 = -3;
signed char v52 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v55;
unsigned short v56;
signed char v57;
signed char v58;
v55 = 6 - 7;
v56 = 7 + v54;
v57 = v52 - v52;
v58 = v19 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 13: 
return 7;
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
signed char v62;
unsigned int v63;
signed short v64;
unsigned short v65;
v61 = -4 + 0;
v62 = -4 - 0;
v63 = 0U + 3U;
v64 = 0 - v33;
v65 = v1 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
