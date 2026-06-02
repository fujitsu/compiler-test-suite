#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (void);
static unsigned char (*v2) (void) = v1;
signed int v3 (unsigned short, signed int, signed short);
signed int (*v4) (unsigned short, signed int, signed short) = v3;
extern signed short v5 (unsigned int, signed int, unsigned short);
extern signed short (*v6) (unsigned int, signed int, unsigned short);
extern unsigned int v7 (unsigned short, unsigned short, signed int, signed short);
extern unsigned int (*v8) (unsigned short, unsigned short, signed int, signed short);
static unsigned short v9 (unsigned int, unsigned short, signed int, signed char);
static unsigned short (*v10) (unsigned int, unsigned short, signed int, signed char) = v9;
extern unsigned int v11 (signed short, signed char, signed char, unsigned int);
extern unsigned int (*v12) (signed short, signed char, signed char, unsigned int);
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern unsigned char v15 (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned char (*v16) (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned int v17 (signed short, signed char, unsigned char);
extern unsigned int (*v18) (signed short, signed char, unsigned char);
signed int v19 (unsigned int, signed char);
signed int (*v20) (unsigned int, signed char) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (signed char, unsigned int);
extern unsigned char (*v24) (signed char, unsigned int);
extern signed short v25 (unsigned int, unsigned short, unsigned int);
extern signed short (*v26) (unsigned int, unsigned short, unsigned int);
extern unsigned char v27 (unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned char, unsigned int);
void v29 (signed int);
void (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed int v32 = 0;
signed short v31 = 2;

void v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 0U;
signed int v36 = 2;
signed char v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned int v38, signed char v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = 1;
signed int v41 = -2;
unsigned short v40 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v9 (unsigned int v43, unsigned short v44, signed int v45, signed char v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = 2;
signed short v48 = 0;
signed short v47 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed char v50;
unsigned int v51;
unsigned char v52;
v50 = -3 - v46;
v51 = 1U + v43;
v52 = v23 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 5: 
{
signed short v53;
signed char v54;
unsigned char v55;
unsigned int v56;
v53 = -3 - v49;
v54 = v46 + v46;
v55 = 6 - 1;
v56 = v17 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v57, signed int v58, signed short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = 3;
unsigned short v61 = 6;
signed int v60 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (void)
{
{
for (;;) {
signed int v65 = 1;
signed int v64 = 0;
unsigned char v63 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v66;
unsigned int v67;
unsigned char v68;
v66 = 3 + 2;
v67 = 1U - 5U;
v68 = v23 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 2: 
{
unsigned int v69;
unsigned short v70;
signed int v71;
signed char v72;
unsigned short v73;
v69 = 2U + 3U;
v70 = 2 + 7;
v71 = v64 + v64;
v72 = -4 - 0;
v73 = v9 (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 12: 
return 0;
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
unsigned char v76;
v76 = v1 ();
history[history_index++] = (int)v76;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
