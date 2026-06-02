#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed char, unsigned short, unsigned char);
static signed int (*v2) (signed char, unsigned short, unsigned char) = v1;
extern signed short v3 (signed short, unsigned short, signed int, signed short);
extern signed short (*v4) (signed short, unsigned short, signed int, signed short);
extern unsigned short v5 (unsigned short, signed short, unsigned int);
extern unsigned short (*v6) (unsigned short, signed short, unsigned int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern signed char v9 (signed short, signed char, signed char);
extern signed char (*v10) (signed short, signed char, signed char);
extern signed short v11 (unsigned short, unsigned int, unsigned short);
extern signed short (*v12) (unsigned short, unsigned int, unsigned short);
extern signed int v13 (unsigned short, unsigned int, unsigned int);
extern signed int (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (signed short, signed short);
extern unsigned char (*v18) (signed short, signed short);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
signed char v21 (signed short, unsigned char, unsigned short, unsigned short);
signed char (*v22) (signed short, unsigned char, unsigned short, unsigned short) = v21;
extern signed short v23 (signed int, signed int, unsigned short, unsigned char);
extern signed short (*v24) (signed int, signed int, unsigned short, unsigned char);
extern unsigned short v25 (signed char, unsigned char);
extern unsigned short (*v26) (signed char, unsigned char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
unsigned int v29 (unsigned char, unsigned int, signed int, signed short);
unsigned int (*v30) (unsigned char, unsigned int, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned int v32 = 5U;
signed char v31 = 2;

unsigned int v29 (unsigned char v34, unsigned int v35, signed int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 0U;
signed int v39 = -3;
unsigned char v38 = 1;
trace++;
switch (trace)
{
case 3: 
return v40;
case 5: 
return 1U;
case 7: 
return v40;
case 9: 
return 2U;
case 11: 
return 7U;
default: abort ();
}
}
}
}

signed char v21 (signed short v41, unsigned char v42, unsigned short v43, unsigned short v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 0;
unsigned int v46 = 5U;
signed short v45 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed char v48, unsigned short v49, unsigned char v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 0;
unsigned char v52 = 6;
signed int v51 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v54;
unsigned int v55;
unsigned short v56;
signed short v57;
v54 = 7 - 1;
v55 = 5U + 5U;
v56 = v49 + v49;
v57 = v11 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 14: 
return -2;
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
signed char v60;
unsigned short v61;
unsigned char v62;
signed int v63;
v60 = 1 + 2;
v61 = 5 + v33;
v62 = 4 + 2;
v63 = v1 (v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
